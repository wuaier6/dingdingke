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

    /**
     * 教师一览
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function ListView(Request $request)
    {
        $company_id=1234123;
        $teacherlist=$this->teacher->findwhere(['company_id'=>$company_id,'status'=>1])->all();
        $data['teacher_list']=$teacherlist;
        return view('company.teacher_list',$data);
    }


    /**
     * 创建教师
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function CreateView(Request $request)
    {
        $company_id=1234123;
        return view('company.teacher_create');
    }


    public function Edi2t(Request $request){
        $company_id=1234123;
        $teacherinfo=$this->teacher->findwhere(['company_id'=>$company_id,'id'=>1])->first();
        if(is_null($teacherinfo)){
            return $this->return_json_error_data(-1,"the teacher isn't exist");
        }
        $data['teacher_info']=$teacherinfo;
        return view('company.teacher_edit',$data);
    }

    public function DoEd2it(Request $request){
        $company_id=1234123;
        $id=1;
        $data=$request->all();
        $this->teacher->updateOrCreate(['company_id'=>$company_id,'id'=>$id], $data);
        return $this->return_json_data(1);
    }


    public function index(Request $request){
        $company_id="df1b6ea0-c9ba-11e6-af4d-bd3315b73cb3";
        $teacherlist=$this->teacher->findwhere(['company_id'=>$company_id,'status'=>1])->all();
        $data['teacher_list']=$teacherlist;
        return view('company.teacher_list',$data);
    }

    public function Create(Request $request){
        $company_id="df1b6ea0-c9ba-11e6-af4d-bd3315b73cb3";
        $data['company_id']=$company_id;
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
        $data['headpic'] = $request->file('headpic')->store("/".$company_id.'/teacher/headpic/');

        $this->teacher->updateOrCreate(['company_id'=>$company_id,'cell'=> $data['cell']], $data);
        return $this->return_json_data(1);
    }

    public function Edit(Request $request){
        $company_id="df1b6ea0-c9ba-11e6-af4d-bd3315b73cb3";
        $data['company_id']=$company_id;
        $data['province']=  $this->location->getProvince();
        $data['teacher_tag']=$this->teachertag->all();
        $data['teacher_subject']=$this->teachersubject->all();
        return view('console.teacher.create',$data);
    }

}