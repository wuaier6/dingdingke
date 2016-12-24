@extends('adminlayouts.app')

@section('title', 'Moell Blog')

@section('style')

@endsection

@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        课程列表
        <small>欢迎使用订课通</small>
    </h1>
</section>

<!-- Main content -->
<section class="content">
    <div class="box box-default">
        <table class="table table-inverse" sytle="border: 1px solid #908c8c;">
            <thead>
            <tr>
                <th>日期</th>
                <th>对应级别</th>
                <th>时间</th>
                <th>课程主题</th>
                <th>任课老师</th>
                <th>教室</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <?php $i=1;?>
            @foreach($lesson_list as $day_key => $lesson)
                @foreach($lesson  as $lesson_val)
                    <tr>
                        @if($i==1)
                             <td rowspan="{{count($lesson)}}" style="vertical-align: inherit;">{{$day_key}}</td>
                        @endif
                        <td>B&Above</td>
                        <td>{{date("H:i", $lesson_val->start_time)}}-{{date("H:i", $lesson_val->end_time)}}</td>
                        <td>{{$lesson_val->name}}</td>
                        <td>{{$lesson_val->teacher_name}}</td>
                        <td>av room</td>
                        <td>
                            <div class="btn-group">
                                <button type="button" class="btn btn-xs btn-info grid-order-up" data-id=""><i class="fa fa-caret-up fa-fw"></i></button>
                                <button type="button" class="btn btn-xs btn-default grid-order-down" data-id=""><i class="fa fa-caret-down fa-fw"></i></button>
                            </div>
                        </td>
                    </tr>
                    <?php $i++;?>
                @endforeach
                <?php $i=1;?>
            @endforeach
            <tr>
                <td rowspan="2" style="vertical-align: inherit;">monday</td>
                <td>B&Above</td>
                <td>19:00-20:00</td>
                <td>nihaosadfsdfasdfasdfasd</td>
                <td>王老师</td>
                <td>av room</td>
                <td>
                    <div class="btn-group">
                        <button type="button" class="btn btn-xs btn-info grid-order-up" data-id=""><i class="fa fa-caret-up fa-fw"></i></button>
                        <button type="button" class="btn btn-xs btn-default grid-order-down" data-id=""><i class="fa fa-caret-down fa-fw"></i></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>B&Above</td>
                <td>19:00-20:00</td>
                <td>个数几件</td>
                <td>王老师</td>
                <td>av room</td>
                <td>
                    <div class="btn-group">
                        <button type="button" class="btn btn-xs btn-info grid-order-up" data-id=""><i class="fa fa-caret-up fa-fw"></i></button>
                        <button type="button" class="btn btn-xs btn-default grid-order-down" data-id=""><i class="fa fa-caret-down fa-fw"></i></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td rowspan="3" style="vertical-align: inherit;">tuesday</td>
                <td>B&Above</td>
                <td>19:00-20:00</td>
                <td>nihaosadfsdfasdfasdfasd</td>
                <td>王老师</td>
                <td>av room</td>
                <td>
                    <div class="btn-group">
                        <button type="button" class="btn btn-xs btn-info grid-order-up" data-id=""><i class="fa fa-caret-up fa-fw"></i></button>
                        <button type="button" class="btn btn-xs btn-default grid-order-down" data-id=""><i class="fa fa-caret-down fa-fw"></i></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>B&Above</td>
                <td>19:00-20:00</td>
                <td>个数几件</td>
                <td>王老师</td>
                <td>av room</td>
                <td>
                    <div class="btn-group">
                        <button type="button" class="btn btn-xs btn-info grid-order-up" data-id=""><i class="fa fa-caret-up fa-fw"></i></button>
                        <button type="button" class="btn btn-xs btn-default grid-order-down" data-id=""><i class="fa fa-caret-down fa-fw"></i></button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>B&Above</td>
                <td>19:00-20:00</td>
                <td>个数几件</td>
                <td>王老师</td>
                <td>av room</td>
                <td>
                    <div class="btn-group">
                        <a class="btn btn-sm btn-danger batch-delete">删除</a>

                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection

@section('script')


    <script>
        $(document).ready(function () {

        });
    </script>
@endsection