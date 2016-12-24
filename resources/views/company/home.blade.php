@extends('adminlayouts.app')

@section('title', 'Moell Blog')

@section('style')


@endsection

@section('content')
        <!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        订课通主页
        <small>欢迎使用订课通</small>
    </h1>
</section>

<!-- Main content -->
<section class="content">

    <div class="row">
        <div class="col-md-3">
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>1024</h3>

                    <p>学员总数</p>
                </div>
                <div class="icon">
                    <i class="fa fa-users"></i>
                </div>
                <a href="/admin/users" class="small-box-footer">
                    More&nbsp;
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <div class="col-md-3">
            <div class="small-box bg-green">
                <div class="inner">
                    <h3>150</h3>
                    <p>当月新增学员数</p>
                </div>
                <div class="icon">
                    <i class="fa fa-shopping-cart"></i>
                </div>
                <a href="/admin/orders" class="small-box-footer">
                    More&nbsp;
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <div class="col-md-3">
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3>10</h3>
                    <p>未通过人数</p>
                </div>
                <div class="icon">
                    <i class="fa fa-book"></i>
                </div>
                <a href="/admin/articles" class="small-box-footer">
                    More&nbsp;
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <div class="col-md-3">
            <div class="small-box bg-red">
                <div class="inner">
                    <h3>100</h3>
                    <p>今日定课（人次）</p>
                </div>
                <div class="icon">
                    <i class="fa fa-file"></i>
                </div>
                <a href="/admin/files" class="small-box-footer">
                    More&nbsp;
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection

@section('script')

@endsection