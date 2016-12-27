<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::group(['prefix' => 'admin','namespace' => 'Admin'],function ($router)
{
    $router->get('login','LoginController@showLoginForm')->name('admin.login');
    $router->post('form','LoginController@form')->name('admin.form');

    $router->get('upload','LoginController@upload')->name('admin.upload');
    $router->post('upload','LoginController@upload')->name('admin.upload');

    $router->get('class','LoginController@class_create')->name('admin.class');

    $router->get('classlist','LoginController@class_list')->name('admin.class');

    $router->get('teachercreate','LoginController@teacher_create')->name('admin.teachercreate');

    $router->get('teacherlist','LoginController@teacher_list')->name('admin.teacher');
});


Route::group(['namespace' => 'Common'],function ($router)
{
    Route::group(['prefix' => 'location'],function ($router){

        $router->get('list/{type}/{pid}','LocationController@List')->name('location.list');

    });
});


Route::group(['namespace' => 'Console'],function ($router)
{
    $router->get('home','HomeController@index')->name('home');

    Route::group(['prefix' => 'company','namespace' => 'Company'],function ($router){
        $router->get('index','CompanyController@index')->name('company.index');
        $router->get('create','CompanyController@Create')->name('company.create');
        $router->get('edit/{teacher_id}','CompanyController@Edie')->name('company.edit');
        $router->post('create','CompanyController@DoCreate')->name('company.docreate');
        $router->post('edit','CompanyController@DoEdit')->name('company.docreate');
    });


    Route::group(['prefix' => 'teacher','namespace' => 'Teacher'],function ($router){
        $router->get('index','TeacherController@index')->name('teacher.index');
        $router->get('create','TeacherController@Create')->name('teacher.create');
        $router->get('edit/{teacher}','TeacherController@Edit')->name('teacher.edit');
        $router->post('create','TeacherController@DoCreate')->name('teacher.docreate');
        $router->post('edit','TeacherController@DoEdit')->name('teacher.docreate');

        $router->get('qrcode','TeacherController@ScanQrcode')->name('teacher.qrcode');
    });

    Route::group(['prefix' => 'classes','namespace' => 'Classes'],function ($router){
        $router->get('index','ClassesController@index')->name('classes.index');
        $router->get('create','ClassesController@Create')->name('classes.create');
        $router->get('edit/','ClassesController@Edit')->name('classes.edit');
        $router->post('create','ClassesController@DoCreate')->name('classes.docreate');
        $router->post('edit','ClassesController@DoEdit')->name('classes.docreate');
    });

    Route::group(['prefix' => 'lesson','namespace' => 'Lesson'],function ($router){
        $router->get('index','LessonController@index')->name('lesson.index');
        $router->get('create','LessonController@Create')->name('lesson.create');
        $router->get('edit/{lesson_id}','LessonController@Edit')->name('lesson.edit');
        $router->post('create','LessonController@DoCreate')->name('lesson.docreate');
        $router->post('edit','LessonController@DoEdit')->name('lesson.doedit');
    });

    Route::group(['prefix' => 'staff','namespace' => 'Staff'],function ($router){
        $router->get('lessontag','LessonTagController@index')->name('staff.lessontag');
        $router->get('room','LessonRoomController@index')->name('staff.room');
        $router->post('room/create','LessonRoomController@Save')->name('staff.room.create');
    });
});
