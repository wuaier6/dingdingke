@extends('adminlayouts.app')

@section('title', 'Moell Blog')

@section('style')
        <!-- Theme style -->
<link rel="stylesheet" href="/packages/admin/AdminLTE/plugins/select2/select2.min.css">
<link rel="stylesheet" href="/packages/admin/AdminLTE/plugins/iCheck/all.css">

<link rel="stylesheet" href="/packages/admin/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css">

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
        <form action="/admin/form" method="post" accept-charset="UTF-8"
              class="form-horizontal" pjax-container="">
            <div class="box-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">主题</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="topic" name="topic" value="" class="form-control"
                                   placeholder="Company Name">
                        </div>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">教室</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="classroom" name="classroom"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="key" selected>name1</option>
                            <option value="key">name2</option>
                            <option value="key">name3</option>
                            <option value="key">name4</option>
                        </select>
                    </div>
                    <label for="test" class="col-sm-2 control-label">任课老师</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="class_teacher" name="class_teacher"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="key" selected>name1</option>
                            <option value="key">name2</option>
                            <option value="key">name3</option>
                            <option value="key">name4</option>
                        </select>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">种类</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="tags" name="tags"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="key" selected>name1</option>
                            <option value="key">name2</option>
                            <option value="key">name3</option>
                            <option value="key">name4</option>
                        </select>
                    </div>
                    <label for="test" class="col-sm-2 control-label">级别</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="level" name="level[]" multiple="multiple"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="key1" selected>name1</option>
                            <option value="key2">name2</option>
                            <option value="key3">name3</option>
                            <option value="key4">name4</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="data" class="col-sm-2 control-label">开课时间</label>
                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                            <input type="text" id="data_day" name="data_day" value="" class="form-control"  />
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
    <script src="/packages/admin/AdminLTE/plugins/select2/select2.full.min.js"></script>
    <script src="/packages/admin/AdminLTE/plugins/iCheck/icheck.min.js"></script>

    <script src="/packages/admin/moment/min/moment-with-locales.min.js"></script>
    <script src="/packages/admin/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#classroom").select2();

            $("#class_teacher").select2();
            $("#tags").select2();
            $("#level").select2();

            $('#data_day').datetimepicker({"format":"YYYY-MM-DD"});
            $('#start').datetimepicker({"format":"HH:mm"});
            $('#end').datetimepicker({"format":"HH:mm"});
        });
    </script>
@endsection