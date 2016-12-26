<?php
namespace App\Http\Controllers\Console\Lesson;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Repositories\LessonTagRepositoryEloquent;

use Validator;

class LessonTagController extends Controller
{
    protected $lessontag;

    /**
     * LessonTagController constructor.
     * @param LessonTagRepositoryEloquent $lessontag
     */
    public function __construct(LessonTagRepositoryEloquent $lessontag)
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