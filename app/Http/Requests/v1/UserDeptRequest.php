<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;
class UserDeptRequest extends BaseFormRequest
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
            "hosp_id" => 'bail|required|integer',
            "dept_id" =>  'bail|required|integer',
            "member_flg" => 'bail|required|integer',
            "in_flg" => 'bail|required|integer',
            "out_flg" =>  'bail|required|integer',
        ];
    }
}