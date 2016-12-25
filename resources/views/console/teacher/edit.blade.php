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
        追加教师
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
                    <label for="test" class="col-sm-2 control-label">所属地区</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="province_id" name="province_id" data-placeholder="ChooseTags"
                                tabindex="-1"
                                aria-hidden="true">
                            <option class="default" value="0"></option>
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
                <div class="form-group">
                    <label for="image" class="col-sm-2 control-label">头像</label>
                    <div class="col-sm-6">
                        <input type="file" class="picture" id="headpic" name="headpic" />

                        <input type="hidden"  name="headpic_action" id="headpic_action"  value="0"/>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">授业阶段</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="tags" name="tags"  data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            @foreach($teacher_tag as $teacher_tag_val)
                                <option value="{{$teacher_tag_val->id}}">{{$teacher_tag_val->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <label for="test" class="col-sm-2 control-label">授业课程</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="subject" name="subject" data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            @foreach($teacher_subject as $teacher_subject_val)
                                <option value="{{$teacher_subject_val->id}}">{{$teacher_subject_val->name}}</option>
                            @endforeach
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