<?php
namespace App\Http\Controllers\Console\Classes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Validator;

use OSS\OssClient;
use OSS\Core\OssException;
class ClassesController extends Controller
{


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct( )
    {
      //  $this->lesson=$lesson;
    }

    public function index(Request $request){
        $accessKeyId = "eawH7D0GV43s2w0A"; ;
        $accessKeySecret = "mDYyxhuiBfy2evf0qjPmuZctVQeuE2";
        $endpoint = "omron-test.oss-cn-shanghai.aliyuncs.com";
        try {
            $ossClient = new OssClient($accessKeyId, $accessKeySecret, $endpoint);
            $ossClient->uploadFile('omron-test', 'testafadf', $filePath);
        } catch (OssException $e) {
            print $e->getMessage();
        }

        return view('console.classes.list');
    }

    public function Create(Request $request){
        return view('console.classes.create');
    }

    public function Edit(Request $request){

    }

    public function DoCreate(Request $request){

    }

    public function DoEdit(Request $request){

    }




}