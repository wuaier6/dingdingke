<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;
class UserCodeRequest extends BaseFormRequest
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
//            "blood_type" => 'bail|required|integer',
//            "telno" =>  'bail|required|string',
//            "emeritus_flg" => 'bail|required|integer',
//            "education_flg" => 'bail|required|integer',
//            "job" =>  'bail|required|integer',
//            "family_amount" =>  'bail|required|integer',
//            "family_income"=>  'bail|required|integer',
            "bar_code" => 'bail|required',
        ];
    }
}