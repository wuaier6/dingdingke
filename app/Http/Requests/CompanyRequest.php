<?php

namespace App\Http\Requests;
use App\Http\Requests\BaseFormRequest;
class CompanyRequest extends Request
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
        return  [
            "name" => 'bail|required',
            "province_id" => 'bail|required|integer|min:1',
            "city_id" =>  'bail|required|integer|min:1',
            "district_id" =>  'bail|required|integer|min:1',
            "address" =>  'bail|required',
            "business_licence" => 'bail|required_if:business_licence_action,1|image',
            "business_entity" =>  'bail|required',
            "id_card" =>  'bail|required_if:id_card_action,1|image',
            "cell" =>  'bail|required|regex:/^1([0-9]){10}$/',
            "tags"=>  'bail|required',
            ];
    }
}

