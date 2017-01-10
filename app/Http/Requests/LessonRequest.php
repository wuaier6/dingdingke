<?php

namespace App\Http\Requests;

use App\Http\Requests\BaseFormRequest;

class LessonRequest extends Request
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
            "type" => '',
            "room_id" => 'bail|required|integer|min:1',
            "lesson_day" => 'bail|required|date',
            "start" => 'bail|required|integer',
            "end" => 'bail|required|integer',
            "teacher_id" => 'bail|required|integer|min:1',
            "limit" => 'bail|required|integer',
            "tags" => 'bail|required',
        ];
    }
}