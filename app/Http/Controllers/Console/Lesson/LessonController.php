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




}