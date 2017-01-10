@extends('adminlayouts.app')

@section('title', 'Moell Blog')

@section('style')


@endsection

@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        老师列表
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

                    @foreach($teacher_list as $teacher_val)
                        <li>
                        <span class="mailbox-attachment-icon has-img"><img
                                    src="{{$teacher_val->headpic}}"
                                    alt=""></span>

                            <div class="mailbox-attachment-info">
                                <div>
                                    <a href="/teacher/edit/{{$teacher_val->id}}" class="mailbox-attachment-name"
                                       style="word-break:break-all;"><i
                                                class="fa fa-pencil"></i>&nbsp;&nbsp;{{$teacher_val->name}}
                                    </a>
                                </div>
                                <div>
                                    <i class="fa fa-camera"></i>&nbsp;&nbsp;1992-12-12
                                </div>
                                <div>
                                    <i class="fa fa-phone"></i>&nbsp;&nbsp;{{$teacher_val->cell}}
                                </div>
                                <div>
                                    <a data-id="{{$teacher_val->id}}" data-name="{{$teacher_val->name}}"
                                       name="bind_weixin">
                                        绑定微信
                                    </a>
                                </div>
                            </div>
                        </li>
                    @endforeach

                </ul>
            </div>

            <div class="box-footer clearfix">

            </div>
            <!-- /.box-body -->
        </div>
    </div>
</section>
<!-- /.content -->
</div>

<div class="modal fade" id="bindwx-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">微信绑定</h4>
            </div>
            <div class="modal-body">
                <div>name</div>
                <div><img src="" id="weixin_pic"
                            alt=""></div>
            </div>
        </div>
    </div>
</div>
<!-- /.content-wrapper -->
@endsection

@section('script')
    <script>
        $(document).ready(function () {
            $("a[name='bind_weixin']").click(function () {
                var teacher_id = $(this).attr('data-id');
                var teacher_name = $(this).attr('data-id');
                $('#weixin_pic').attr('src',"http://192.168.10.14:85/teacher/qrcode/"+teacher_id);
                $('#bindwx-modal').modal();
            })
        });
    </script>
@endsection