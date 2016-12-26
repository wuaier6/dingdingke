<?php
namespace App\Http\Controllers\Console\Lesson;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Repositories\LessonRepositoryEloquent;

use Validator;

class LessonController extends Controller
{
    protected $lesson;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(LessonRepositoryEloquent $lesson)
    {
        $this->lesson=$lesson;
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
        return view('console.lesson.create');
    }

    public function Edit(Request $request){

    }

    public function DoCreate(Request $request){

    }

    public function DoEdit(Request $request){

    }




}