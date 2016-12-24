<?php
namespace App\Http\Controllers\Console\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Repositories\StudentRepositoryEloquent;

use Validator;

class StudentController extends Controller
{
    protected $student;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(StudentRepositoryEloquent $student)
    {
        $this->student=$student;
    }


    /**
     * 创建教师
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function CreateView(Request $request)
    {
        $company_id=1234123;
        return view('company.student_create');
    }


}