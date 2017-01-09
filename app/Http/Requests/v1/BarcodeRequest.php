<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;
class BarcodeRequest extends BaseFormRequest
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
            "cell" =>  'bail|required|regex:/^([0-9]){11}$/',
        ];
    }
}