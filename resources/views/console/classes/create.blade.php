@extends('adminlayouts.app')

@section('title', 'Moell Blog')

@section('style')
        <!-- Theme style -->
<link rel="stylesheet" href="/packages/admin/AdminLTE/plugins/select2/select2.min.css">
<link rel="stylesheet" href="/packages/admin/AdminLTE/plugins/iCheck/all.css">
<link rel="stylesheet" href="/packages/admin/bootstrap-fileinput/css/fileinput.min.css">

@endsection

@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        追加班级
        <small>欢迎使用订课通</small>
    </h1>
</section>

<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <form action="/teacher/create" method="post" accept-charset="UTF-8"  enctype="multipart/form-data"
              class="form-horizontal" pjax-container="">
            <input type="hidden" name="company_id" id="company_id" value="{{$company_id}}"/>
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
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">班主任</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="tags" name="tags"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="key" selected>name1</option>
                            <option value="key">name2</option>
                            <option value="key">name3</option>
                            <option value="key">name4</option>
                        </select>
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

    <script src="/packages/admin/bootstrap-fileinput/js/plugins/canvas-to-blob.min.js"></script>
    <script src="/packages/admin/bootstrap-fileinput/js/fileinput.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#tags").select2();
            $("#subject").select2();

            $("#province_id").select2({
                placeholder: "请选择啊",
                ajax: {
                    url: "/location/list/1/0",
                    dataType: 'json',
                    processResults: function (data) {
                        return {
                            results: data.data
                        };
                    }
                }
            });

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

            $("#headpic").fileinput({"overwriteInitial":true,
                "showUpload": false, //是否显示上传按钮
                "showRemove" : false, //显示移除按钮
                "allowedFileExtensions" : ['jpg', 'png','gif'],//接收的文件后缀,
                "language":"en",
                "initialPreview": false,
                "allowedFileTypes":["image"],
                "initialCaption":""});

            $("#headpic").on('filecleared', function(event) {
                $("#picture_action").val(2);
                $("#picture_id").val("");
            });

        });
    </script>
@endsection