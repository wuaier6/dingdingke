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
                                    alt="Attachment"></span>

                        <div class="mailbox-attachment-info">
                            <div>
                                <a href="/teacher/edit/{{$teacher_val->id}}" class="mailbox-attachment-name" style="word-break:break-all;"><i
                                            class="fa fa-pencil"></i>&nbsp;&nbsp;{{$teacher_val->name}}
                                </a>
                            </div>
                            <div>
                                <i class="fa fa-camera"></i>&nbsp;&nbsp;1992-12-12
                            </div>
                            <div>
                                <i class="fa fa-phone"></i>&nbsp;&nbsp;{{$teacher_val->cell}}
                            </div>
                            {{--<span class="mailbox-attachment-size">--}}
                            {{--<input type="checkbox" class="grid-item" data-id="test"/>--}}
                            {{--<span class="pull-right">--}}
                                    {{--<a href="" target="_blank" download="custom-filename.jpg"><i--}}
                                                {{--class="fa fa-cloud-download"></i></a>--}}
                            {{--</span>--}}
                            {{--</span>--}}
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
<!-- /.content-wrapper -->
@endsection

@section('script')

@endsection