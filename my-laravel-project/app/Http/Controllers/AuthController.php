<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Requests\AuthRequest;
use Illuminate\Support\Facades\Hash;

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
                ->firstOrFail();

            if (Hash::check($request->get('matkhau'), $user->matkhau)) {
                session()->put('id', $user->id);
                session()->put('ten_hocvien', $user->ten_hocvien);
                session()->put('anhdaidien', $user->anhdaidien);
                session()->put('email', $user->email);
                session()->put('matkhau', $user->matkhau);
                session()->put('sodienthoai', $user->sodienthoai);
                session()->put('sodutaikhoan', $user->sodutaikhoan);
                session()->put('quyen', $user->quyen);
                session()->put('FK_ma_khoahoc', $user->FK_ma_khoahoc);

                if (session()->get('quyen') == 2 || session()->get('quyen') == 3) {
                    return redirect()->route('CourseCategory.index');
                } else {
                    return redirect()->route('index');
                }
                
            } else {
                return redirect()->route('login')->with('loginError', 'Email hoặc mật khẩu không trùng khớp');
            }
        } catch (\Throwable $th) {
            return redirect()->route('login')->with('loginError', 'Email hoặc mật khẩu không trùng khớp');
        }
    }


    public function register()
    {
        return view('Auth.register');
    }

    public function process_register(AuthRequest $authRequest)
    {
        $data = new User;
        $data->fill($authRequest->except('_token'));
        $data->matkhau = bcrypt($authRequest->matkhau);
        $data->save();

        return redirect()->route('login');
    }

    public function logout()
    {

        session()->flush();

        return redirect()->route('index');
    }
}
