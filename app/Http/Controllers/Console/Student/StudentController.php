<?php
namespace App\Http\Controllers\Console\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Repositories\StudentRepositoryEloquent;
use App\Repositories\LocationRepositoryEloquent;
use Validator;
use Endroid\QrCode\QrCode;
class StudentController extends Controller
{
    protected $student;
    protected $location;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(StudentRepositoryEloquent $student,LocationRepositoryEloquent $location)
    {
        $this->student=$student;

        $this->location=$location;
    }


    public function index(Request $request){
     //   $data['province']=  $this->location->getProvince();
        return view('console.student.list');
    }

    public function Create(Request $request){
        $data['province']=  $this->location->getProvince();
        return view('console.student.create',$data);
    }


    public function DoCreate(Request $request){
        $data=$request->all();
        $data['company_id']=$this->company_id;
        $this->student->updateOrCreate(['company_id'=>$this->company_id,'cell'=> $data['cell']], $data);
        return $this->return_json_data(1);
    }

    public function ScanQrcode(){
        $wechat = app('wechat');
        $qrcode = $wechat->qrcode;
        $result = $qrcode->temporary(66, 6 * 24 * 3600);

        $qrCode = new QrCode();
        $qrCode->setText($result['url']);
        // now we can directly output the qrcode
        header('Content-Type: '.$qrCode->getContentType());
        $qrCode->render();
        die;
        return $this->return_json_data(1,$result);
    }

    public function Info(Request $request,$student_id){
        return view('console.student.info');
        $student_info=$this->student->findwhere(['id'=>$student_id,'company_id'=>$this->company_id])->first();

        print_r($student_info);
    }
}