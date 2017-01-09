<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;
class TemperatureRequest extends BaseFormRequest
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
            "measure_at" => 'bail|required|integer',
            "temperature" =>  'bail|required|numeric',
            "measure_type" => 'bail|required|integer',
            "dept_id" =>  'bail|required|integer',
            "company_id" =>  'bail|required|integer',
            "bar_code" => 'bail|required',
        ];
    }
}