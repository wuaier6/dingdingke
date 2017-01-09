<?php

namespace App\Http\Requests\v1;
use App\Http\Requests\BaseFormRequest;
class MmcQuestionRequest extends BaseFormRequest
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
            "template_id" =>  'bail|required|integer',
            "question_id" =>  'bail|required|integer',
            "text" =>  'bail|required',
            "visit_at" =>  'bail|required|date_format:Y-m-d',
            "bar_code" => 'bail|required',
        ];
    }
}