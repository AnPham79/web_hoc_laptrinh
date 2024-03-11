<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AuthRequest extends FormRequest
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
            'email' => [
                'required',
                'unique:users,email',
                'string',
                'email'
            ],
            'matkhau' => [
                'required',
                'string',
                'min:6',
                'max:16'
            ],
            'sodienthoai' => [
                'required',
                'numeric',
                'min:10',
            ]
        ];
    }

    public function messages()
    {
        return [
            'email.required' => 'Email không được bỏ trống',
            'email.unique' => 'Email của bạn đã bị trùng',
            'email.string' => 'Email phải là chuổi',
            'email.email' => 'Cú pháp email của bạn không chính xác',
            'matkhau.required' => 'Mật khẩu không được để trống',
            'matkhau.string' => 'Mật khẩu phải là dạng chuổi',
            'matkhau.min' => 'Mật khẩu của bạn tối thiểu phải có 6 kí tự',
            'matkhau.max' => 'Mật khẩu của bạn tối đa phải có 16 kí tự',
            'sodienthoai' => [
                'required' => 'Số điện thoại không được bỏ trống',
                'numeric' => 'Số điện thoại phải là số',
                'min' => 'Số điện thoại phải có ít nhất 10 ký tự',
            ]            
        ];
    }
}
