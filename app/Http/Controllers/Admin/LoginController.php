<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Storage;
class LoginController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    /**
     * 重写登录视图页面
     * @date   2016-09-05T23:06:16+0800
     * @return [type]                   [description]
     */
    public function showLoginForm()
    {
        return view('company.company_create');
    }

    public function form(Request $request){
        $data=$request->all();
        print_r($data);
        die;
    }

    public function upload(Request $request){
        $path = Storage::putFile('avatars', $request->file('picture'));
        //$path = $request->file('picture')->store('businesslicence');
        return $this->return_json_data(1,$path);

        return json_encode(array("data"=>1));
        $data=$request->all();
        print_r($data);
        die;
    }


    /**
     * 重写登录视图页面
     * @date   2016-09-05T23:06:16+0800
     * @return [type]                   [description]
     */
    public function class_create()
    {
        return view('company.class_create');
    }


    /**
     * 重写登录视图页面
     * @date   2016-09-05T23:06:16+0800
     * @return [type]                   [description]
     */
    public function class_list()
    {
        return view('company.class_list');
    }

    /**
     * 重写登录视图页面
     * @date   2016-09-05T23:06:16+0800
     * @return [type]                   [description]
     */
    public function teacher_create()
    {
        return view('company.teacher_create');
    }

    /**
     * 重写登录视图页面
     * @date   2016-09-05T23:06:16+0800
     * @return [type]                   [description]
     */
    public function teacher_list()
    {
        return view('company.teacher_list');
    }
}