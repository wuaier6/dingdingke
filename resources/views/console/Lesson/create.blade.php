@extends('adminlayouts.app')

@section('title', 'Moell Blog')

@section('style')
        <!-- Theme style -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap-datetimepicker/4.17.43/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" href="/packages/admin/AdminLTE/plugins/select2/select2.min.css">
<link rel="stylesheet" href="/packages/admin/AdminLTE/plugins/iCheck/all.css">

@endsection

@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        追加课程
        <small>欢迎使用订课通</small>
    </h1>
</section>
<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <form action="/lesson/create" method="post" accept-charset="UTF-8"
              class="form-horizontal" pjax-container="">
            <div class="box-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">主题</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="name" name="name" value="" class="form-control"
                                   placeholder="Company Name">
                        </div>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">教室</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="room_id" name="room_id"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option class="default" value="0"></option>
                            @foreach($lessonroom as $lessonroom_val)
                                <option value="{{ $lessonroom_val->id}}">{{ $lessonroom_val->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <label for="test" class="col-sm-2 control-label">任课老师</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="teacher_id" name="teacher_id"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            @foreach($teacher as $teacher_val)
                                <option value="{{ $teacher_val->id}}">{{ $teacher_val->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">种类</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="tags" name="tags"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option class="default" value="0"></option>
                            @foreach($lessontag as $lessontag_val)
                                <option value="{{ $lessontag_val->id}}">{{ $lessontag_val->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <label for="test" class="col-sm-2 control-label">级别</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="level" name="level[]" multiple="multiple"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="data" class="col-sm-2 control-label">开课时间</label>
                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            <input type="text" name="lesson_day" id="lesson_day" class="form-control"  />
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="row" style="width: 370px">
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <input type="text" id="start" name="start" value="" class="form-control" />
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <input type="text" id="end" name="end" value="" class="form-control"  />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">限制人数</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <input type="text" id="limit" name="limit" value="" class="form-control"
                                   placeholder="Company Name">
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <div class="col-sm-2">
                </div>
                <div class="col-sm-6">
                    <div class="btn-group pull-right">
                        <button type="submit" class="btn btn-info pull-right">Submit</button>
                    </div>
                    <div class="btn-group pull-left">
                        <input type="reset" class="btn btn-warning" value="Reset">
                    </div>
                </div>
            </div>
            <!-- /.box-footer -->
        </form>
    </div>


</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection

@section('script')


    <script src="//cdn.bootcss.com/moment.js/2.8.1/moment.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap-datetimepicker/4.17.43/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/packages/admin/AdminLTE/plugins/select2/select2.full.min.js"></script>
    <script src="/packages/admin/AdminLTE/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#classroom").select2();

            $("#class_teacher").select2();
            $("#tags").select2();
            $("#level").select2();
            $('#lesson_day').datetimepicker({"format":"YYYY-MM-DD","locale":"en"});
            $('#start').datetimepicker({"format":"HH:00","locale":"en"});
            $('#end').datetimepicker({"format":"HH:00","locale":"en"});
        });
    </script>
@endsection