<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\User;
use App\Models\Lesson;
use App\Models\CourseUser;
use App\Models\Comment;
use Illuminate\Pagination\Paginator;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->get('q', '');
        Paginator::useBootstrap();
        $data = Course::query()
            ->where('tieude_khoahoc', 'like', '%' . $search . '%')
            ->paginate(8);

        $data->appends(['q' => $search]);

        $courseUserOwn = [];

        if (session()->has('id')) {

            $userId = session()->get('id');

            $courseUser = CourseUser::where('FK_ma_nguoidung', $userId)->pluck('FK_ma_khoahoc');

            $courseUserOwn = Course::query()
                ->whereIn('id', $courseUser)
                ->get();
        }

        return view('index', [
            'data' => $data,
            'search' => $search,
            'courseUserOwn' => $courseUserOwn
        ]);
    }

    public function show($id)
    {
        $data = Course::find($id);

        $cmt = Comment::query()
        ->where('FK_ma_khoahoc', $id)
        ->with('NameUserInComment')
        ->get();

        $lessons = Lesson::where('FK_ma_khoahoc', $id)->get();

        if (session()->has('id')) {
            $userId = session()->get('id');

            $courseUser = CourseUser::where('FK_ma_nguoidung', $userId)
                ->where('FK_ma_khoahoc', $id)
                ->first();

            if ($courseUser) {
                return view('show', [
                    'data' => $data,
                    'cmt' => $cmt,
                    'lessons' => $lessons,
                    'courseUser' => $courseUser
                ]);
            } else {
                return view('show', [
                    'data' => $data,
                    'cmt' => $cmt,
                    'courseUser' => $courseUser
                ]);
            }
        } else {
            return redirect()->route('login');
        }
    }

    public function showLesson($id)
    {
        $lessonDetail = Lesson::find($id);

        return view('showLesson', [
            'lessonDetail' => $lessonDetail,
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

        $courseUser = CourseUser::create([
            'FK_ma_nguoidung' => $userId,
            'FK_ma_khoahoc' => $id
        ]);        

        return redirect()->route('index')->with('success', 'Thanh toán thành công');
    }

    public function comment($id)
    {
        if (!session()->get('quyen')) {
            return redirect()->route('login');
        }

        $userId = session()->get('id');

        $courseUser = Comment::create([
            'noidung_binhluan' => request()->input('noidung_binhluan'),
            'FK_ma_nguoidung' => $userId,
            'FK_ma_khoahoc' => $id,
        ]);

        return redirect()->route('show', ['id' => $id]);
    }
}
