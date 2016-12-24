<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      //  $this->middleware('auth.admin:admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.home');
    }

//    public function Form(){
//        return view('admin.form.form1');
//    }

    public function Form(){
        return view('wechat.order_class.list');
    }

    public function Wall(){
        return view('wechat.wall.chatlist');
    }
}