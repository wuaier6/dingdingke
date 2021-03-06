
<div class="row">
    <div class="col-md-2"><h4 class="pull-right">{{ $label }}</h4></div>
    <div class="col-md-6"></div>
</div>

<hr style="margin-top: 0px;">

<div class="has-many-{{$column}}">

    <div class="has-many-{{$column}}-forms">

        @foreach($forms as $pk => $form)

            <div class="has-many-{{$column}}-form">

                @foreach($form->fields() as $field)
                    {!! $field->render() !!}
                @endforeach

                <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-6">
                        <div class="remove btn btn-warning btn-sm pull-right"><i class="fa fa-trash">&nbsp;</i>Remove</div>
                    </div>
                </div>

                <hr>
            </div>

        @endforeach
    </div>

    <template class="{{$column}}-tpl">
        <div class="has-many-{{$column}}-form">

            {!! $templateHtml !!}

            <div class="form-group">
                <label class="col-sm-2 control-label"></label>
                <div class="col-sm-6">
                    <div class="remove btn btn-warning btn-sm pull-right"><i class="fa fa-trash"></i>&nbsp;Remove</div>
                </div>
            </div>
            <hr>
        </div>
    </template>

    <div class="form-group">
        <label class="col-sm-2 control-label"></label>
        <div class="col-sm-6">
            <div class="add btn btn-success btn-sm"><i class="fa fa-save"></i>&nbsp;New</div>
        </div>
    </div>

</div>