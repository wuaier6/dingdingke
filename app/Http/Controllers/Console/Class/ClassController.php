<?php
namespace App\Http\Controllers\Console\Class;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


use Validator;

class ClassController extends Controller
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

    public function index(Request $request){

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