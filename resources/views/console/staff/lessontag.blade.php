@extends('adminlayouts.app')

@section('title', 'Moell Blog')

@section('style')
        <!-- Theme style -->
<link rel="stylesheet" href="/packages/admin/AdminLTE/plugins/select2/select2.min.css">
<link rel="stylesheet" href="/packages/admin/AdminLTE/plugins/iCheck/all.css">
@endsection

@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        课程种类管理
        <small>欢迎使用订课通</small>
    </h1>
</section>

<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-footer">
                <ul class="mailbox-attachments clearfix">
                    @foreach($lessontag as $lessontag_val)
                    <li>
                        <div class="mailbox-attachment-info">
                            <div>
                                <a href="#" class="mailbox-attachment-name" style="word-break:break-all;"><i
                                            class="fa fa-pencil"></i>&nbsp;&nbsp;{{$lessontag_val->name}}
                                </a>
                            </div>
                        </div>
                        <div class="mailbox-attachment-info">
                            <ul class="list-unstyled">
                                <li>
                                    1234
                                </li>
                            </ul>
                        </div>

                    </li>
                    @endforeach
                </ul>
            </div>
            <div class="box-footer">
                <div class="col-sm-2">
                </div>
                <div class="col-sm-6">
                    <div class="btn-group pull-right">
                        <button type="submit" class="btn btn-info pull-right" id="btn_create">追加</button>
                    </div>
                    <div class="btn-group pull-left">
                        <input type="reset" class="btn btn-warning" value="Reset">
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<div class="modal fade" id="filter-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">课程种类追加</h4>
            </div>
            <form action="/test" method="get" pjax-container>
                <div class="modal-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">所属类别</label>

                            <div class="col-sm-6">
                                <select class="form-control" id="lessontag_father" name="lessontag_father"
                                        data-placeholder="ChooseTags" tabindex="-1"
                                        aria-hidden="true">
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">名称</label>

                            <div class="col-sm-6">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil"></i></span>
                                    <input type="text" id="name" name="name" value="" class="form-control"
                                           placeholder="Lesson Name">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">课程类型</label>
                            <div class="col-sm-6">
                                <label>
                                    <input type="radio" name="type" value="1" class="minimal" check/>&nbsp;必修&nbsp;&nbsp;
                                </label>
                                <label>
                                    <input type="radio" name="type" value="0" class="minimal"/>&nbsp;选修&nbsp;&nbsp;
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary submit">提交</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection

@section('script')
    <script src="/packages/admin/AdminLTE/plugins/select2/select2.full.min.js"></script>
    <script src="/packages/admin/AdminLTE/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $("input[name='type']").iCheck({
                radioClass: 'icheckbox_square-aero',
            });
            $('#btn_create').click(function () {
                $('#lessontag_father').select2();
                $('#filter-modal').modal();
            })
        });
    </script>
@endsection