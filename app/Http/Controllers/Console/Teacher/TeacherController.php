<?php
namespace App\Http\Controllers\Console\Teacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\CompanyRepositoryEloquent;
use App\Repositories\TeacherRepositoryEloquent;
use App\Repositories\LocationRepositoryEloquent;
use App\Repositories\TeacherTagRepositoryEloquent;
use App\Repositories\TeacherSubjectRepositoryEloquent;
use Validator;
use OSS\OssClient;
use OSS\Core\OssException;
use log;
use Wechat;
class TeacherController extends Controller
{
    protected $company;
    protected $teacher;
    protected $location;
    protected $teachertag;
    protected $teachersubject;

    /**
     * TeacherController constructor.
     * @param TeacherRepositoryEloquent $teacher
     * @param LocationRepositoryEloquent $location
     * @param TeacherTagRepositoryEloquent $teachertag
     * @param TeacherSubjectRepositoryEloquent $teachersubject
     */
    public function __construct(CompanyRepositoryEloquent  $company, TeacherRepositoryEloquent $teacher,LocationRepositoryEloquent $location,TeacherTagRepositoryEloquent $teachertag,TeacherSubjectRepositoryEloquent $teachersubject)
    {
        $this->company=$company;
        $this->teacher=$teacher;
        $this->location=$location;

        $this->teachertag=$teachertag;
        $this->teachersubject=$teachersubject;
    }

    public function index(Request $request){

        $teacherlist=$this->teacher->findwhere(['company_id'=>$this->company_id,'status'=>1])->all();
        $data['teacher_list']=$teacherlist;
        $data['company_id']=$this->company_id;
        return view('console.teacher.list',$data);
    }

    public function Create(Request $request){
        $data['company_id']=$this->company_id;
        $data['province']=  $this->location->getProvince();
        $data['teacher_tag']=$this->teachertag->all();
        $data['teacher_subject']=$this->teachersubject->all();
        return view('console.teacher.create',$data);
    }

    public function DoCreate(Request $request){
        $data=$request->all();
        $company_id=$data['company_id'];
        $company_info=$this->company->findwhere(array("company_id"=>$company_id))->first();
        if(is_null($company_info)){
            //已经不存在机构
            return $this->return_json_error_data(-1);
        }
        //图片另存为
        $data['headpic'] = asset('storage/'.$request->file('headpic')->store("/".$company_id.'/teacher/headpic'));

          //保存oss
//        $accessKeyId = "eawH7D0GV43s2w0A"; ;
//        $accessKeySecret = "mDYyxhuiBfy2evf0qjPmuZctVQeuE2";
//        $endpoint = "omron-test.oss-cn-shanghai.aliyuncs.com";
//        try
//            $ossClient = new OssClient($accessKeyId, $accessKeySecret, $endpoint);
//            $response= $ossClient->uploadFile('omron-test','omron-test', public_path("storage/".$data['headpic']));
//        } catch (OssException $e) {
//            print $e->getMessage();
//        }

        $this->teacher->updateOrCreate(['company_id'=>$company_id,'cell'=> $data['cell']], $data);
        return $this->return_json_data(1);
    }

    public function Edit(Request $request,$teacher_id){
        $teacher_info=$this->teacher->findwhere(array("company_id"=>$this->company_id,'id'=>$teacher_id))->first();
        if(is_null($teacher_info)){
            //已经存在机构
            return $this->return_json_error_data(-1);
        }
        $data['teacher_info']=  $teacher_info;
        $data['province']=  $this->location->getProvince();
        $data['city']=  $this->location->getCity($teacher_info->province_id);
        $data['district']=  $this->location->getDistrict($teacher_info->city_id);
        $data['teacher_tag']=$this->teachertag->all();
        $data['teacher_subject']=$this->teachersubject->all();
        $data['company_id']=$this->company_id;
        $data['teacher_id']=$teacher_id;
        return view('console.teacher.edit',$data);
    }

    public function DoEdit(Request $request){
        $data=$request->all();

        $company_id =$data['company_id'];
        //图片另存为
        if ($data['headpic_action'] <> 0) {
            if (isset($data['headpic']) && $data['headpic'] != '') {
                $data['headpic'] =asset('storage/' . $request->file('headpic')->store("/".$company_id.'/teacher/headpic'));
            }
        }else{
            unset($data['headpic']);
        }

        $data['company_id']=$company_id;
        $this->teacher->updateOrCreate(['company_id'=>$company_id,'id'=>$data['teacher_id']], $data);
        return $this->return_json_data(1);
    }

    public function ScanQrcode(Request $request){
        $wechat = app('wechat');
        $qrcode = $wechat->qrcode;
        $result = $qrcode->temporary(56, 6 * 24 * 3600);
        return $this->return_json_data(1,$result);
    }

}