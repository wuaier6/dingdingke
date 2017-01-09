<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;

class BgDataRequest extends BaseFormRequest
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
            "barcode" => 'bail|required',
            "date"    => 'bail|required|date_format:Y-m-d H:i:s',
        ];
    }
}
