<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class AuthController extends Controller
{
    public function login()
    {
        return view('Auth.login');
    }

    public function process_login(Request $request)
    {
        try {
            $user = User::query()
            ->where('email', $request->get('email'))
            ->where('matkhau', $request->get('matkhau'))
            ->firstOrFail();

            session()->put('id', $user->id);
            session()->put('ten_hocvien', $user->ten_hocvien);
            session()->put('anhdaidien', $user->anhdaidien);
            session()->put('matkhau', $user->matkhau);
            session()->put('sodienthoai', $user->sodienthoai);
            session()->put('sodutaikhoan', $user->sodutaikhoan);
            session()->put('quyen', $user->quyen);
            session()->put('FK_ma_khoahoc', $user->FK_ma_khoahoc);

            return redirect()->route('CourseCategory.index');

        } catch (\Throwable $th) {
            return redirect()->route('login')->with('error', 'Đăng nhập thất bại');
        }
    }

    public function logout()
    {

        session()->flush();

        return redirect()->route('login');
    }
}
