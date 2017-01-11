<?php
namespace App\Http\Controllers\Console\Lesson;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Repositories\LessonRepositoryEloquent;

use Validator;

use App\Repositories\LessonTagRepositoryEloquent;
use App\Repositories\LessonRoomRepositoryEloquent;
use App\Repositories\TeacherRepositoryEloquent;

use App\Http\Requests\LessonRequest;

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
    public function __construct(LessonRepositoryEloquent $lesson, LessonTagRepositoryEloquent $lessontag
        , LessonRoomRepositoryEloquent $lessonroom, TeacherRepositoryEloquent $teacher)
    {
        $this->lesson = $lesson;
        $this->lessontag = $lessontag;
        $this->lessonroom = $lessonroom;
        $this->teacher = $teacher;
    }

    public function index(Request $request)
    {
        $lesson_list = $this->lesson->lesson_list();
        $lesson_format = array();
        foreach ($lesson_list as $lesson_value) {
            $day = date("Y-m-d", $lesson_value->start_time);
            $lesson_format[$day][] = $lesson_value;
        }

        $data['lesson_list'] = $lesson_format;

        return view('console.lesson.list', $data);
    }

    public function Create(Request $request)
    {
        $company_id = $this->company_id;
        $data['lessontag'] = $this->lessontag->findwhere(["company_id" => $company_id, "pid" => 0])->all();
        $data['lessonroom'] = $this->lessonroom->findwhere(["company_id" => $company_id])->all();
        $data['teacher'] = $this->teacher->get_teacher_list($company_id);
        return view('console.lesson.create', $data);
    }

    public function Edit(Request $request,$lesson_id)
    {
        $company_id = $this->company_id;
        $lesson_info=$this->lesson->findwhere(array("company_id"=>$this->company_id,'id'=>$lesson_id))->first();
        if(is_null($lesson_info)){
            //已经存在机构
            return $this->return_json_error_data(-1);
        }
        $data['lessontag'] = $this->lessontag->findwhere(["company_id" => $company_id, "pid" => 0])->all();
        $data['lessonroom'] = $this->lessonroom->findwhere(["company_id" => $company_id])->all();
        $data['teacher'] = $this->teacher->get_teacher_list($company_id);
        $data['lesson_info'] = $lesson_info;
        return view('console.lesson.edit',$data);

    }

    public function DoCreate(Request $request, LessonRequest $LessonRequest)
    {
        $data = $request->all();
        $company_id = $this->company_id;
        $lesson['company_id'] = $company_id;
        $lesson['name'] = $data['name'];
        $lesson['room_id'] = $data['room_id'];
        $lesson['teacher_id'] = $data['teacher_id'];
        $lesson['limit'] = $data['limit'];
        $lesson['tags'] = $data['tags'];
        $lesson['start_time'] = strtotime($data['lesson_day']) + $data['start']*3600;
        $lesson['end_time'] = strtotime($data['lesson_day']) + $data['end']*3600;

        $is_exist = $this->lesson->lesson_isexist($lesson['start_time'], $lesson['end_time'],  $lesson['room_id'],  $lesson['teacher_id']);
        //当前时段存在课程
        if ($is_exist) {
            return $this->return_json_error_data(-1);
        }
        $this->lesson->Create($lesson);
        return $this->return_json_data(1);
    }

    public function DoEdit(Request $request, LessonRequest $LessonRequest)
    {
        $data = $request->all();
        $company_id = $this->company_id;
        $lesson['company_id'] = $company_id;
        $lesson['name'] = $data['name'];
        $lesson['room_id'] = $data['room_id'];
        $lesson['teacher_id'] = $data['teacher_id'];
        $lesson['limit'] = $data['limit'];
        $lesson['tags'] = $data['tags'];
        $lesson['start_time'] = strtotime($data['lesson_day']) + $data['start']*3600;
        $lesson['end_time'] = strtotime($data['lesson_day']) + $data['end']*3600;

        $is_exist = $this->lesson->lesson_isexist($lesson['start_time'], $lesson['end_time'],  $lesson['room_id'],  $lesson['teacher_id'], $data['lesson_id']);
        //当前时段存在课程
        if ($is_exist) {
            return $this->return_json_error_data(-1);
        }

        $this->lesson->updateOrCreate(['company_id' => $company_id, 'id' =>  $data['lesson_id']], $lesson);
        return $this->return_json_data(1);
    }

    public function DoRemove(Request $request)
    {
        $data = $request->all();
        $this->lesson->delete($data['lesson_id']);
        return $this->return_json_data(1);
    }


}