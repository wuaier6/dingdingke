@extends('adminlayouts.app')

@section('title', 'Moell Blog')

@section('style')
        <!-- Theme style -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap-datetimepicker/4.17.43/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" href="/packages/admin/AdminLTE/plugins/select2/select2.min.css">


@endsection

@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        追加学生
        <small>欢迎使用订课通</small>
    </h1>
</section>

<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <form action="/student/create" method="post" accept-charset="UTF-8"
              class="form-horizontal" pjax-container="">
            <div class="box-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">姓名</label>

                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="name" name="name" value="" class="form-control"
                                   placeholder="teacher_name">
                        </div>
                    </div>
                    <label class="col-sm-2 control-label">出生年月</label>
                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="birthday" name="birthday" value="" class="form-control"
                                   placeholder="birthday">
                        </div>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">所属地区</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="province_id" name="province_id" data-placeholder="ChooseTags"
                                tabindex="-1"
                                aria-hidden="true">
                            <option class="default" value="0"></option>
                            @foreach($province as $province_val)
                                <option value="{{ $province_val->id}}">{{ $province_val->text}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <select class="form-control" id="city_id" name="city_id" data-placeholder="ChooseTags"   tabindex="-1"
                                aria-hidden="true">
                            <option class="default" value="0"></option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <select class="form-control" id="district_id" name="district_id" data-placeholder="ChooseTags"
                                tabindex="-1"
                                aria-hidden="true">
                            <option class="default" value="0"></option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">详细地址</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="address" name="address" value="" class="form-control"
                                   placeholder="Input Address">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">身份证号码</label>

                    <div class="col-sm-3">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="id_card" name="id_card" value="" class="form-control"
                                   placeholder="Input">
                        </div>
                    </div>
                    <label for="title" class="col-sm-1 control-label">联系方式</label>
                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                            <input type="text" id="cell" name="cell" value="" class="form-control"
                                   placeholder="Input">
                        </div>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">阶段</label>

                    <div class="col-sm-2">
                        <select class="form-control" id="level" name="level"
                                data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="1" selected>幼儿园</option>
                            <option value="2">小学</option>
                            <option value="3">初中</option>
                            <option value="4">高中</option>
                        </select>
                    </div>
                    <label for="test" class="col-sm-2 control-label">年级</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="grate" name="grate"
                                data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="1" selected>小班</option>
                            <option value="2">中班</option>
                            <option value="3">大班</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">学校名称</label>
                    <div class="col-sm-3">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="school_name" name="school_name" value="" class="form-control"
                                   placeholder="Input">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">老师姓名</label>
                    <div class="col-sm-3">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="teacher_name" name="teacher_name" value="" class="form-control"
                                   placeholder="Input">
                        </div>
                    </div>
                    <label for="title" class="col-sm-1 control-label">联系方式</label>
                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="teacher_cell" name="teacher_cell" value="" class="form-control"
                                   placeholder="Input">
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
    <script src="//cdn.bootcss.com/moment.js/2.8.1/moment.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap-datetimepicker/4.17.43/js/bootstrap-datetimepicker.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#level").select2();
            $("#grate").select2();
            $('#birthday').datetimepicker({"format":"YYYY-MM-DD","locale":"en"});
            $("#province_id").change(function(){
                $.get("/location/list/2/"+ $(this).val(), function (data) {
                    if (parseInt(data.code) === 1) {
                        $("#city_id option:not(.default)").remove()
                        $("#city_id").select2({
                            data:data.data
                        });
                    }
                });
            });

            $("#city_id").change(function(){
                $.get("/location/list/3/"+ $(this).val(), function (data) {
                    if (parseInt(data.code) === 1) {
                        $("#district_id option:not(.default)").remove()
                        $("#district_id").select2({
                            data:data.data});
                    }
                });
            });

            $('.checkbox').iCheck({checkboxClass: 'icheckbox_minimal-blue'});


        });
    </script>
@endsection