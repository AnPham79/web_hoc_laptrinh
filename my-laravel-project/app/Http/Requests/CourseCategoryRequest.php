<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CourseCategoryRequest extends FormRequest
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
            'tendanhmuc_khoahoc' => [
                'required',
                'unique:course_categories',
            ]
        ];
    }

    public function messages(): array
    {
        return [
            'tendanhmuc_khoahoc.required' => 'Tên danh mục là bắt buộc.',
            'tendanhmuc_khoahoc.unique' => 'Tên danh mục đã tồn tại trong hệ thống.',
        ];
    }
}
