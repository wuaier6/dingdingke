<?php
namespace App\Http\Controllers\Console\Staff;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Repositories\LessonRoomRepositoryEloquent;

class LessonRoomController extends Controller
{
    protected $lessonroom;

    /**
     * LessonTagController constructor.
     * @param CompanyRepositoryEloquent $company
     */
    public function __construct(LessonRoomRepositoryEloquent  $lessonroom)
    {
        $this->lessonroom=$lessonroom;
    }

    public function index(){
        $data['lesson_rooms']=$this->lessonroom->findwhere(['company_id'=>$this->company_id])->all();
        return view('console.staff.room',$data);
    }

    /**
     * 教室详细
     */
    public function info(){

    }

    /**
     *保存操作
     */
    public function Save(Request $request){
        $data = $request->all();
        $room_id= $data['room_id'];
        unset($data['room_id']);
        if($room_id==0){
            $data['company_id']= $this->company_id;
            $this->lessonroom->Create($data);
        }else{
            $this->lessonroom->updateOrCreate(['company_id' => $this->company_id, 'id' =>$room_id ], $data);
        }

        return $this->return_json_data(1);
    }


}