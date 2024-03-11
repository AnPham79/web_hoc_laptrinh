<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\User;
use Illuminate\Pagination\Paginator;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->get('q', '');
        Paginator::useBootstrap();
        $data = Course::query()
            ->where('tieude_khoahoc', 'like', '%' . $search . '%')
            ->paginate(2);

        $data->appends(['q' => $search]);

        return view('index', [
            'data' => $data,
            'search' => $search
        ]);
    }

    public function show($id)
    {
        $data = Course::find($id);

        return view('show', [
            'data' => $data,
        ]);
    }

    public function order($id)
    {
        if (!session()->get('quyen')) {
            return redirect()->route('login');
        }

        $data = Course::find($id);

        return view('order', [
            'data' => $data,
        ]);
    }

    public function pay(Request $request, $id)
    {
        $userId = session()->get('id');

        if (!$userId) {
            return redirect()->back()->with('error', 'Không tìm thấy thông tin người dùng');
        }

        $user = User::findOrFail($userId);
        $course = Course::findOrFail($id);

        $coursePrice = $course->gia_khoahoc;
        $currentBalance = $user->sodutaikhoan;

        if ($currentBalance < $coursePrice) {
            return redirect()->back()->with('error', 'Số dư tài khoản không đủ để thanh toán');
        }

        $user->FK_ma_khoahoc = $id;
        $user->save();

        $newBalance = $currentBalance - $coursePrice;
        $user->sodutaikhoan = $newBalance;
        $user->save();

        return redirect()->route('index')->with('success', 'Thanh toán thành công');
    }
}
