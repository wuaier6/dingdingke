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
        OMRON
        <small>欢迎关注omron微信墙</small>
    </h1>
</section>

<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <form class="form-horizontal">
            <div class="box-body">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">公司名称</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="company_name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">联系电话</label>

                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="mobile_phone">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">公司法人</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="inputPassword">
                    </div>
                    <label for="inputPassword3" class="col-sm-2 control-label">法人身份证号</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" id="id_card">
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleInputFile" class="col-sm-2 control-label">营业执照</label>
                    <div class="col-sm-8">
                        <input type="file" class="form-control" id="exampleInputFile">
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-info pull-right">Sign in</button>
            </div>
            <!-- /.box-footer -->
        </form>
        <!-- /.col -->

        <form action="/admin/form" method="post" accept-charset="UTF-8"
              class="form-horizontal" pjax-container="">
            <div class="box-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">ID</label>

                    <div class="col-sm-6">
                        <div class="box box-solid box-info no-margin">
                            <!-- /.box-header -->
                            <div class="box-body">
                                &nbsp;
                            </div>
                            <!-- /.box-body -->
                        </div>
                    </div>
                </div>
                <div class="form-group 1">

                    <label for="title" class="col-sm-2 control-label">Title</label>

                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="title" name="title" value="" class="form-control"
                                   placeholder="Input Title">
                        </div>
                    </div>
                </div>
                <div class="form-group 1">

                    <label for="content" class="col-sm-2 control-label">Content</label>

                    <div class="col-sm-6">
                        <textarea id="content" name="content" class="form-control" rows="10"
                                  placeholder="Input Content"></textarea>
                    </div>
                </div>
                <div class="form-group 1">

                    <label for="rate" class="col-sm-2 control-label">Rate</label>

                    <div class="col-sm-6">
                        <div class="input-group">
                            <div class="input-group"><span class="input-group-btn"><button type="button"
                                                                                           class="btn btn-primary">-
                                    </button></span><input type="text" id="rate" name="rate" value="0"
                                                           class="form-control" placeholder="0"
                                                           style="width: 100px; text-align: center;"><span
                                        class="input-group-btn"><button type="button" class="btn btn-success">+</button></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group 1">
                    <div class="form-group ">
                        <label for="redio_test" class="col-sm-2 control-label">redio_test</label>

                        <div class="col-sm-6">
                            <input type="radio" name="yes" value="1" class="minimal yes" check/>&nbsp;yes&nbsp;&nbsp;
                            <input type="radio" name="yes" value="0" class="minimal yes"/>&nbsp;no&nbsp;&nbsp;
                        </div>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">ceshi</label>
                    <div class="col-sm-6">
                        <select class="form-control" id="tags" name="tags" data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="key" selected>name1</option>
                            <option value="key">name2</option>
                            <option value="key">name3</option>
                            <option value="key">name4</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="checkbox" class="col-sm-2 control-label">checkbox</label>
                    <div class="col-sm-6" id="checkbox">
                        <div class="input-group">
                            <input type="checkbox" name="checkbox" value="1" class="checkbox" checked />&nbsp;yes&nbsp;&nbsp;
                            <input type="checkbox" name="checkbox" value="0" class="checkbox"  />&nbsp;no&nbsp;&nbsp;
                        </div>
                        <input type="hidden" name="checkbox[]">
                    </div>
                </div>

                <div class="form-group">
                    <label for="image" class="col-sm-2 control-label">image</label>
                    <div class="col-sm-6">
                        <input type="file" class="picture" id="picture" name="picture" />
                        <input type="hidden" class="picture_action" name="picture_id" id="picture_id" value="0"/>
                        <input type="hidden" class="picture_action" name="picture_action" id="picture_action"  value="0"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Updated At</label>

                    <div class="col-sm-6">
                        <div class="box box-solid box-info no-margin">
                            <!-- /.box-header -->
                            <div class="box-body">
                                &nbsp;
                            </div>
                            <!-- /.box-body -->
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <input type="hidden" name="_token" value="tWaNCNJFzyPNQrVMHBG8OaSZSMT0CLXd0zADwKpI">
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
            $("#tags").select2({allowClear: true});

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
                "maxFileCount": 1,
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

        });
    </script>
@endsection