<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;

class MmcFRSReportRequest extends BaseFormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "hosp_id"=>  'bail|required|integer',
            "dept_id" =>  'bail|required|integer',
            "age" => 'bail|required|integer',
            "sex" => 'bail|required|integer',
            "cholesterol" => 'bail|required|numeric',
            "hdl_c" => 'bail|required|numeric',
            "sbp" => 'bail|required|integer',
            "cure_flg" => 'bail|required|integer',
            "frs_score" =>  'bail|required|integer',
            "frs_level" =>  'bail|required|integer',
            "probability" =>  'bail|required|numeric',
            "advice" =>  'bail|required|string',
            "screen_at" =>  'bail|required|date_format:Y-m-d',
            "bar_code" => 'bail|required',
        ];
    }
}