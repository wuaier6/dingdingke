<?php

namespace App\Http\Requests;

use App\Http\Requests\BaseFormRequest;
class TeacherRequest extends Request
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
            "name" => 'bail|required',
            "province_id" => 'bail|required|integer|min:1',
            "city_id" => 'bail|required|integer|min:1',
            "district_id" => 'bail|required|integer|min:1',
            "headpic" => 'bail|required_if:headpic_action,1|image',
            "address" => 'bail|required',
            "cell" => 'bail|required|identitycell',
            "tags" => 'bail|required|integer|min:1',
            "id_card" => 'bail|required|identitycards',
        ];
    }
}