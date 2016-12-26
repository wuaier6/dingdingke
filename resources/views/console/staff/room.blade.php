@extends('adminlayouts.app')

@section('title', 'Moell Blog')

@section('style')
        <!-- Theme style -->
@endsection

@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        课程教室管理
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
                    <li>
                        <div class="mailbox-attachment-info">
                            <div>
                                <a href="#" class="mailbox-attachment-name" style="word-break:break-all;"><i
                                            class="fa fa-pencil"></i>&nbsp;&nbsp;class-room1
                                </a>
                            </div>
                            <div>
                              <i class="fa fa-align-center"></i>&nbsp;&nbsp;限制：5人
                            </div>
                        </div>
                    </li>

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
                    <div  class="form-horizontal">
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
                            <label class="col-sm-2 control-label">限制人数</label>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="text" id="limit" name="limit" value="0" class="form-control" placeholder="0" style="width: 100px" />
                                </div>
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
    <script src="/packages/admin/number-input/bootstrap-number-input.js"></script>
    <script>
        $(document).ready(function () {
            $('#btn_create').click(function(){
                $('#filter-modal').modal();
            })

            $('#limit').bootstrapNumber({
                upClass: 'success',
                downClass: 'primary',
                center: true
            });
        });
    </script>
@endsection