<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;

class MmcRiskReportRequest extends BaseFormRequest
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
            "education_level" => 'bail|required|integer',
            "family_his" => 'bail|required|integer',
            "smoke_flg" => 'bail|required|integer',
            "sbp" => 'bail|required|integer',
            "height" => 'bail|required|numeric',
            "weight" => 'bail|required|numeric',
            "waistline" =>  'bail|required|numeric',
            "lipid" =>  'bail|required|numeric',
            "fpg" =>  'bail|required|numeric',
            "ppg" =>  'bail|required|numeric',
            "hta1c" =>  'bail|required|numeric',
            "diabetes_id" =>  'bail|required|integer',
            "diabetes_score" =>  'bail|required|integer',
            "cvd_id" =>  'bail|required|integer',
            "cvd_score" =>  'bail|required|integer',
            "screen_at" =>  'bail|required|date_format:Y-m-d',
            "bar_code" => 'bail|required',
        ];
    }
}


