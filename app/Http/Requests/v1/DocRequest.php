<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;

class DocRequest extends BaseFormRequest
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
            // 'ids'      => '',
            // 'start_at' => '',
            // 'end_at'   => ''
        ];
    }
}
