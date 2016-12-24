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
        追加学生
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
                        <select class="form-control" id="Province" name="Province" data-placeholder="ChooseTags"
                                tabindex="-1"
                                aria-hidden="true">
                            <option value="key" selected>name1</option>
                            <option value="key">name2</option>
                            <option value="key">name3</option>
                            <option value="key">name4</option>
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <select class="form-control" id="City" name="City" data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">

                        </select>
                    </div>
                    <div class="col-sm-2">
                        <select class="form-control" id="District" name="District" data-placeholder="ChooseTags"
                                tabindex="-1"
                                aria-hidden="true">
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
                            <input type="text" id="" name="" value="" class="form-control"
                                   placeholder="Input">
                        </div>
                    </div>
                    <label for="title" class="col-sm-1 control-label">联系方式</label>

                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                            <input type="text" id="" name="" value="" class="form-control"
                                   placeholder="Input">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="image" class="col-sm-2 control-label">头像</label>

                    <div class="col-sm-6">
                        <input type="file" class="picture" id="headpic" name="headpic"/>
                        <input type="hidden" class="picture_action" name="picture_action" id="picture_action"
                               value="0"/>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">阶段</label>

                    <div class="col-sm-2">
                        <select class="form-control" id="level" name="level"
                                data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="key" selected>幼儿园</option>
                            <option value="key">小学</option>
                            <option value="key">初中</option>
                            <option value="key">高中</option>
                        </select>
                    </div>
                    <label for="test" class="col-sm-2 control-label">年级</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="grate" name="grate"
                                data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            <option value="key" selected>小班</option>
                            <option value="key">中班</option>
                            <option value="key">大班</option>
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

    <script src="/packages/admin/bootstrap-fileinput/js/plugins/canvas-to-blob.min.js"></script>
    <script src="/packages/admin/bootstrap-fileinput/js/fileinput.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#level").select2();
            $("#grate").select2();
            var data = [{id: 36, text: "安庆"}, {id: 37, text: "蚌埠"}, {id: 39, text: "池州"}];
            $("#Province").select2();
            $("#City").select2({data});
            $("#District").select2();


            $('.yes').iCheck({
                radioClass: 'iradio_square-blue',
            });

            $('.checkbox').iCheck({checkboxClass: 'icheckbox_minimal-blue'});

            $("#headpic").fileinput({
                "overwriteInitial": true,
                "showUpload": false, //是否显示上传按钮
                "showRemove": false, //显示移除按钮
                "allowedFileExtensions": ['jpg', 'png', 'gif'],//接收的文件后缀,
                "language": "cn",
                "initialPreview": [ //预览图片的设置
                    "<img src='http://www.aspku.com/uploads/allimg/161212/1Z4315c1-1.jpg?2016111293755' class='file-preview-image' alt='肖像图片' title='肖像图片'>",
                ],
                "allowedFileTypes": ["image"],
                "initialCaption": "12341234"
            });

            $("#picture").on('filecleared', function (event) {
                console.log(event, 1234);
                $("#picture_action").val(2);
            });

        });
    </script>
@endsection