<?php
namespace App\Http\Controllers\Console\Lesson;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Repositories\LessonRepositoryEloquent;

use Validator;

use App\Repositories\LessonTagRepositoryEloquent;
use App\Repositories\LessonRoomRepositoryEloquent;
use App\Repositories\TeacherRepositoryEloquent;
class LessonController extends Controller
{
    protected $lesson;
    protected $lessontag;
    protected $lessonroom;
    protected $teacher;
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(LessonRepositoryEloquent $lesson ,LessonTagRepositoryEloquent $lessontag
        ,LessonRoomRepositoryEloquent $lessonroom,TeacherRepositoryEloquent $teacher)
    {
        $this->lesson=$lesson;
        $this->lessontag=$lessontag;
        $this->lessonroom=$lessonroom;
        $this->teacher=$teacher;
    }

    /**
     * 一览
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function ListView(Request $request)
    {
        $lesson_list=   $this->lesson->lesson_list();
        $lesson_format=array();
        foreach($lesson_list as $lesson_value){
            $day = date("Y-m-d", $lesson_value->start_time);
            $lesson_format[$day][]=$lesson_value;
        }

        $data['lesson_list']=$lesson_format;

        return view('company.class_list',$data);
    }


    public function index(Request $request){
        $lesson_list=   $this->lesson->lesson_list();
        $lesson_format=array();
        foreach($lesson_list as $lesson_value){
            $day = date("Y-m-d", $lesson_value->start_time);
            $lesson_format[$day][]=$lesson_value;
        }

        $data['lesson_list']=$lesson_format;

        return view('console.lesson.list',$data);
    }

    public function Create(Request $request){
        $company_id=$this->company_id;
        $data['lessontag']= $this->lessontag->findwhere(["company_id"=>$company_id,"pid"=>0])->all();
        $data['lessonroom']= $this->lessonroom->findwhere(["company_id"=>$company_id])->all();
        $data['teacher']=   $this->teacher->findwhere(["company_id"=>$company_id])->all();
        return view('console.lesson.create',$data);
    }

    public function Edit(Request $request){

    }

    public function DoCreate(Request $request){
        $data = $request->all();

        $company_id = $this->company_id;

        $lesson['company_id']= $company_id;
        $lesson['name']= $data['name'];
        $lesson['room_id']= $data['room_id'];
        $lesson['teacher_id']= $data['teacher_id'];
        $lesson['limit']= $data['limit'];
        $lesson['tags']= $data['tags'];

        $lesson['start_time']= strtotime($data['lesson_day']." ".$data['start']);
        $lesson['end_time']= strtotime($data['lesson_day']." ".$data['end']);

        $this->lesson->Create($lesson);
        return $this->return_json_data(1);
    }

    public function DoEdit(Request $request){

    }




}