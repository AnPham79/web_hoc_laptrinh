<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CourseRequest extends FormRequest
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
            'tieude_khoahoc' => [
                'required',
                'unique:courses,tieude_khoahoc',
            ]
        ];
    }

    public function messages(): array
    {
        return [
            'tieude_khoahoc.required' => 'Tên khóa học là bắt buộc.',
            'tieude_khoahoc.unique' => 'Tên khóa học đã tồn tại trong hệ thống.',
        ];
    }
}
