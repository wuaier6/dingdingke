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
        机构提交审核
        <small>欢迎使用订课通</small>
    </h1>
</section>

<!-- Main content -->
<section class="content">
    <div class="box box-default">
        @if($company_info->status==1)
            <div class="callout  callout-success lead">
                <h4>审核通过!</h4>
                <p>
                    恭喜你审核通过
                </p>
            </div>
        @else
            <div class="callout  callout-danger lead">
                <h4>审核失败!</h4>
                <p>
                    对不起，请重新提交审核信息。{{$company_info->reply_msg}}
                </p>
            </div>
        @endif
        <form action="/company/edit"  id="form_create_company"  enctype="multipart/form-data" method="post" accept-charset="UTF-8"
              class="form-horizontal" pjax-container="">
            <input type="hidden"  name="company_id" id="company_id"
                   value="{{$company_info->company_id}}"/>
            <div class="box-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">机构名称</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="name" name="name" value="{{$company_info->name}}" class="form-control"
                                   placeholder="Company Name">
                        </div>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">所属地区</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="province_id" name="province_id" data-placeholder="ChooseTags"
                                tabindex="-1"
                                aria-hidden="true">
                            @foreach($province as $province_val)
                                <option value="{{ $province_val->id}}" <?php echo $company_info->province_id==$province_val->id? "selected":"" ?> >{{ $province_val->text}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <select class="form-control" id="city_id" name="city_id" data-placeholder="ChooseTags"   tabindex="-1"
                                aria-hidden="true">
                            <option class="default" value="0"></option>
                            @foreach($city as $city_val)
                                <option value="{{ $city_val->id}}"  <?php echo $company_info->city_id==$city_val->id? "selected":"" ?> >{{ $city_val->text}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-sm-2">
                        <select class="form-control" id="district_id" name="district_id" data-placeholder="ChooseTags"
                                tabindex="-1"
                                aria-hidden="true">
                            <option class="default" value="0"></option>
                            @foreach($district as $district_val)
                                <option value="{{ $district_val->id}}" <?php echo $company_info->district_id==$district_val->id? "selected":"" ?>>{{ $district_val->text}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">公司地址</label>
                    <div class="col-sm-6">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="address" name="address" value="{{$company_info->address}}" class="form-control"
                                   placeholder="Input Address">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">营业法人</label>

                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                            <input type="text" id="business_entity" name="business_entity" value="{{$company_info->business_entity}}" class="form-control"
                                   placeholder="Input">
                        </div>
                    </div>
                    <label for="title" class="col-sm-2 control-label">联系方式</label>

                    <div class="col-sm-2">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                            <input type="text" id="cell" name="cell" value="{{$company_info->cell}}" class="form-control"
                                   placeholder="Input">
                        </div>
                    </div>
                </div>
                <div class="form-group">

                    <label for="image" class="col-sm-2 control-label">营业执照</label>
                    <div class="col-sm-6">
                        <input type="file" class="picture" id="business_licence" multiple=false name="business_licence"/>
                        <input type="hidden" class="picture_action" name="business_licence_action" id="business_licence_action"
                               value="0"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="image" class="col-sm-2 control-label">身份证</label>
                    <div class="col-sm-6">
                        <input type="file" class="picture" id="id_card" name="id_card"/>
                        <input type="hidden" class="picture_action" name="id_card_action" id="id_card_action"
                               value="0"/>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="test" class="col-sm-2 control-label">教育方向</label>

                    <div class="col-sm-6">
                        <select class="form-control" id="tags" name="tags[]" multiple="multiple"
                                data-placeholder="ChooseTags" tabindex="-1"
                                aria-hidden="true">
                            @foreach($companytag as $companytag_val)
                                <option value="{{$companytag_val->id}}" <?php echo in_array($companytag_val->id,json_decode($company_info->tags))? "selected":"" ?>  >{{$companytag_val->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            @if($company_info->status!=1)
            <!-- /.box-body -->
            <div class="box-footer">
                <div class="col-sm-2">
                </div>
                <div class="col-sm-6">
                    <div class="btn-group pull-right">
                        <button type="submit" class="btn btn-info pull-right" id="btn_create">提交</button>
                    </div>
                    <div class="btn-group pull-left">
                        <input type="reset" class="btn btn-warning" value="Reset">
                    </div>
                </div>

            </div>
            @endif
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

            var options = {
                success: showResponse  // post-submit callback
            };

            var showResponse = function (responseText, statusText, xhr, $form) {
                if (typeof(responseText) == 'string') {
                    responseText = $.parseJSON(responseText);
                }
                //  showErrorMessage(responseText.data);
                if (responseText.code > 0) {
                    alert(1);
                }
            };

            $('#btn_create').click(function(){
                $("#form_create_company").ajaxSubmit(options);
                return false;
            });

            $("#business_licence").fileinput({
                "overwriteInitial": true,
                "showUpload": false, //是否显示上传按钮
                "showRemove": false, //显示移除按钮
                "allowedFileExtensions": ['jpg', 'png', 'gif'],//接收的文件后缀,
                "initialPreview": [ //预览图片的设置
                    "<img src='<?php echo $company_info->business_licence  ?>' class='file-preview-image' alt='肖像图片' title='肖像图片'>",
                ],
                "allowedFileTypes": ["image"],
                "initialCaption": ""
            });

            $("#business_licence").change(function(){
                $("#business_licence_action").val(1);
            })

            $("#id_card").fileinput({
                "overwriteInitial": true,
                "showUpload": false, //是否显示上传按钮
                "showRemove": false, //显示移除按钮
                "allowedFileExtensions": ['jpg', 'png', 'gif'],//接收的文件后缀,
                "initialPreview": [ //预览图片的设置
                    "<img src='<?php echo $company_info->id_card  ?>' class='file-preview-image' alt='肖像图片' title='肖像图片'>",
                ],
                "allowedFileTypes": ["image"],
                "initialCaption": ""
            });
            $("#id_card").change(function(){
                $("#id_card_action").val(1);
            })

        });
    </script>
@endsection