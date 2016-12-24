<?php
namespace App\Http\Controllers\Console\Teacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Repositories\TeacherRepositoryEloquent;

use Validator;

class TeacherController extends Controller
{
    protected $teacher;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(TeacherRepositoryEloquent $teacher)
    {
        $this->teacher=$teacher;
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


    public function Edit(Request $request){
        $company_id=1234123;
        $teacherinfo=$this->teacher->findwhere(['company_id'=>$company_id,'id'=>1])->first();
        if(is_null($teacherinfo)){
            return $this->return_json_error_data(-1,"the teacher isn't exist");
        }
        $data['teacher_info']=$teacherinfo;
        return view('company.teacher_edit',$data);
    }

    public function DoEdit(Request $request){
        $company_id=1234123;
        $id=1;
        $data=$request->all();
        $this->teacher->updateOrCreate(['company_id'=>$company_id,'id'=>$id], $data);
        return $this->return_json_data(1);
    }


}