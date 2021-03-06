<?php
namespace App\Http\Controllers\Console\Teacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Repositories\CompanyRepositoryEloquent;
use App\Repositories\TeacherRepositoryEloquent;
use App\Repositories\LocationRepositoryEloquent;
use App\Repositories\TeacherTagRepositoryEloquent;
use App\Repositories\TeacherSubjectRepositoryEloquent;
use App\Repositories\CompanyTeacherRepositoryEloquent;

use Validator;
use OSS\OssClient;
use OSS\Core\OssException;
use log;
use Wechat;
use App\Http\Requests\TeacherRequest;
use Endroid\QrCode\QrCode;
class TeacherController extends Controller
{
    protected $company;
    protected $teacher;
    protected $location;
    protected $teachertag;
    protected $teachersubject;
    protected $companyteacher;
    /**
     * TeacherController constructor.
     * @param TeacherRepositoryEloquent $teacher
     * @param LocationRepositoryEloquent $location
     * @param TeacherTagRepositoryEloquent $teachertag
     * @param TeacherSubjectRepositoryEloquent $teachersubject
     */
    public function __construct(CompanyRepositoryEloquent  $company, TeacherRepositoryEloquent $teacher, CompanyTeacherRepositoryEloquent $companyteacher,LocationRepositoryEloquent $location,TeacherTagRepositoryEloquent $teachertag,TeacherSubjectRepositoryEloquent $teachersubject)
    {
        $this->company=$company;
        $this->teacher=$teacher;
        $this->companyteacher=$companyteacher;
        $this->location=$location;

        $this->teachertag=$teachertag;
        $this->teachersubject=$teachersubject;
    }

    public function index(Request $request){

        $teacherlist=$this->teacher->get_teacher_list($this->company_id);
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

    public function DoCreate(Request $request,TeacherRequest $TeacherRequest){
        $data=$request->all();
        $company_id=$this->company_id;
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

        $teacher_info= $this->teacher->updateOrCreate(['cell'=> $data['cell']], $data);
        $this->companyteacher->updateOrCreate(['company_id'=>$company_id,'teacher_id'=>$teacher_info->id], ['company_id'=>$company_id,'teacher_id'=>$teacher_info->id]);
        return $this->return_json_data(1);
    }

    public function Edit(Request $request,$teacher_id){
        $teacher_info=$this->teacher->findwhere(array('id'=>$teacher_id))->first();
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

    public function DoEdit(Request $request ,TeacherRequest $TeacherRequest){
        $data=$request->all();

        $company_id =$this->company_id;

        $teacher_info=$this->teacher->findwhere(['id'=>$data['teacher_id']])->first();
        if(is_null($teacher_info)){
            //教师不存在
            return $this->return_json_error_data(-1);
        }
        //图片另存为
        if ($data['headpic_action'] == 1) {
            if (isset($data['headpic']) && $data['headpic'] != '') {
                $data['headpic'] =asset('storage/' . $request->file('headpic')->store("/".$company_id.'/teacher/headpic'));
            }
        }else{
            unset($data['headpic']);
        }
        $data['company_id']=$company_id;
        $this->teacher->updateOrCreate(['id'=>$data['teacher_id']], $data);
        return $this->return_json_data(1);
    }

    public function WxScanQrcode(Request $request,$teacher_id){
        try{
            $wechat = app('wechat');
            $qrcode = $wechat->qrcode;
            $result = $qrcode->temporary("111".$teacher_id, 6 * 24 * 3600);
        } catch (\Exception $ex) {
            return $this->return_json_data(-1);
        }
        $qrCode = new QrCode();
        $qrCode->setText($result['url']);
        header('Content-Type: '.$qrCode->getContentType());
        $qrCode->render();
        print_r($qrCode);
        die;
    }

}