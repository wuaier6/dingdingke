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
        子中心详细
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
                    <label class="col-sm-2 control-label">子中心名称</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="company_name" name="company_name" value="" class="form-control"
                                   placeholder="Company Name">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">公司地址</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="address" name="address" value="" class="form-control"
                                   placeholder="Input Address">
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

    <script src="/packages/admin/bootstrap-fileinput/js/plugins/canvas-to-blob.min.js"></script>
    <script src="/packages/admin/bootstrap-fileinput/js/fileinput.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#tags").select2();

            $('.yes').iCheck({
                radioClass : 'iradio_square-blue',
            });

            $('.checkbox').iCheck({checkboxClass:'icheckbox_minimal-blue'});

            $("#picture").fileinput({"overwriteInitial":true,
                "showUpload": false, //是否显示上传按钮
                "showRemove" : false, //显示移除按钮
                "uploadUrl": "/admin/upload", //上传的地址
                "allowedFileExtensions" : ['jpg', 'png','gif'],//接收的文件后缀,
                "enctype": 'multipart/form-data',
                "language":"en",
                "initialPreview": [ //预览图片的设置
                    "<img src='http://www.aspku.com/uploads/allimg/161212/1Z4315c1-1.jpg?2016111293755' class='file-preview-image' alt='肖像图片' title='肖像图片'>",
                ],
                "allowedFileTypes":["image"],
                "initialCaption":"12341234"});

            $("#picture").on('filecleared', function(event) {
                console.log(event,1234);
                $("#picture_action").val(2);
                $("#picture_id").val("");
            });

            $("#picture").on("fileuploaderror", function (event, data, previewId, index) {
                alert(2);
            });
            $("#picture").on("filebatchuploadsuccess", function (event, data, previewId, index) {
                $("#picture_action").val(1);
                $("#picture_id").val(1);
                console.log(data.data);
                console.log(data);
            });

            $("#picture1").fileinput({"overwriteInitial":true,
                "showUpload": false, //是否显示上传按钮
                "showRemove" : false, //显示移除按钮
                "uploadUrl": "/admin/upload", //上传的地址
                "allowedFileExtensions" : ['jpg', 'png','gif'],//接收的文件后缀,
                "enctype": 'multipart/form-data',
                "language":"en",
                "allowedFileTypes":["image"],
                "initialCaption":"12341234"});

            $("#picture1").on('filecleared', function(event) {
                console.log(event,1234);
                $("#picture_action1").val(2);
                $("#picture_id1").val("");
            });

            $("#picture1").on("fileuploaderror", function (event, data, previewId, index) {
                alert(2);
            });
            $("#picture1").on("filebatchuploadsuccess", function (event, data, previewId, index) {
                $("#picture_action1").val(1);
                $("#picture_id1").val(1);
                console.log(data.data);
                console.log(data);
            });

        });
    </script>
@endsection