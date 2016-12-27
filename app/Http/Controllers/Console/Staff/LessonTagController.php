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
    public function __construct(LessonTagRepositoryEloquent $lessontag)
    {
        $this->lessontag = $lessontag;
    }

    public function index()
    {
        $lessontag_list = $this->lessontag->skipPresenter()->findwhere(['status' => 1,'company_id' => $this->company_id])->all();
        $data['lessontag']=array();

        foreach($lessontag_list as $lessontag_val){

        }
        return view('console.staff.lessontag',$data);
    }




}