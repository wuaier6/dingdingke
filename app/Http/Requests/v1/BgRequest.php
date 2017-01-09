<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;
class BgRequest extends BaseFormRequest
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
            "measure_at" =>  'bail|required|date_format:YmdHis',
            //"equipment_no" => 'bail|required|string',
            "bg" =>  'bail|required|numeric',
            "dining_status" => 'bail|required|integer',
            "measure_type" => 'bail|required|integer',
            "dept_id" =>  'bail|required|integer',
            "company_id" =>  'bail|required|integer',
            "pharmacy_id"=>  'bail|required|integer',
            "bar_code" => 'bail|required',
        ];
    }
}