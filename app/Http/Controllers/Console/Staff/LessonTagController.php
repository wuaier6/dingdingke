<?php
namespace App\Http\Controllers\Console\Staff;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Repositories\LessonTagRepositoryEloquent;

class LessonTagController extends Controller
{

    protected $lessontag;

    /**
     * LessonTagController constructor.
     * @param CompanyRepositoryEloquent $company
     */
    public function __construct(LessonTagRepositoryEloquent  $lessontag)
    {
        $this->lessontag=$lessontag;
    }

    public function index(){
        return view('console.staff.lessontag');
    }


}