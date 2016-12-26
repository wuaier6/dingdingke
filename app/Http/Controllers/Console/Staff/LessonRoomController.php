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
        return view('console.staff.room');
    }


}