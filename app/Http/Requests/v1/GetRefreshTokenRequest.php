<?php

namespace App\Http\Requests\v1;

use App\Http\Requests\BaseFormRequest;
class GetRefreshTokenRequest extends BaseFormRequest
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
            'grant_type' => 'bail|required',
            'client_id' => 'bail|required',
            'client_secret' => 'bail|required',
            'refresh_token' => 'bail|required',
        ];
    }
}
