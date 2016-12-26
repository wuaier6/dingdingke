<?php
namespace App\Http\Controllers\Console\Lesson;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Repositories\LessonRoomRepositoryEloquent;

use Validator;

class LessonRoomController extends Controller
{
    protected $lessontag;

    /**
     * LessonTagController constructor.
     * @param LessonTagRepositoryEloquent $lessontag
     */
    public function __construct(LessonRoomRepositoryEloquent $lessontag)
    {
        $this->lessontag=$lessontag;
    }

    public function index(){

    }

    public function create(){

    }

    public function remove(){

    }

}