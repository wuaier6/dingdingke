<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;
class MmcUserReportRequest extends BaseFormRequest
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
            "sbp" => 'bail|integer',
            "dbp" =>  'bail|integer',
            "pulse" =>  'bail|integer',
          //  "bp_at" =>  'sometimes|date_format:Y-m-d H:i:s',
            "height" => 'bail|numeric',
            "weight" =>  'bail|numeric',
            "bmi" =>  'bail|numeric',
         //   "hw_at" =>  'sometimes|date_format:Y-m-d H:i:s',
            "bg" =>  'bail|numeric',
            "dining_status" => 'bail|integer',
           // "bg_at" =>  'sometimes|date_format:Y-m-d H:i:s',
            "screen_at" =>  'bail|required|date_format:Y-m-d H:i:s',
            "bar_code" => 'bail|required',
        ];
    }
}