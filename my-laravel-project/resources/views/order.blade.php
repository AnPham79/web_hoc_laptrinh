@extends('layouts.master')

@section('Web học lập trình F88', 'Trang chủ')

@section('content')
    <div class="row article mt-3">
        <div class="col-lg-2 col-md-12 col-sm-12 my-lg-0 my-4 sidebar d-none d-lg-block">
            <ul class="nav flex-column icon-menu">
                <li class="nav-item">
                    <a class="nav-link bg-active rounded-4 text-dark" href="#" onclick="setActive(this)"><i
                            class='bx bxs-home mx-2'></i>Trang
                        chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark rounded-4" href="#" onclick="setActive(this)"><i
                            class='bx bxs-map-alt mx-2'></i>Lộ trình</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark rounded-4" href="#" onclick="setActive(this)"><i
                            class='bx bx-credit-card-front mx-2'></i>Bảng
                        tin</a>
                </li>
            </ul>
        </div>
        <div class="col-lg-10 col-md-12 col-sm-12">
            <div class="row">
                <h2 class="mb-5">Thanh toán</h2>
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <img src="{{ asset('../storage/app/' . $data->anhminhhoa) }}" alt class="rounded-4 w-100">
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 mt-lg-0 mt-3 content-order">
                    <h2>Loại khóa học: <b class="text-success">Trả
                            phí</b></h2>
                    <h3 class="my-3"><i class='bx bx-code-alt mx-2'></i>{{ $data->tieude_khoahoc }}</h3>
                    <p>Giá khóa học: {{ $data->setNumberFormat() }} VNĐ</p>
                    <p>Danh mục khóa học: {{ $data->CourseCategory->tendanhmuc_khoahoc }}</p>
                    <p>tác giả: {{ $data->tacgia_khoahoc }}</p>
                </div>
            </div>
            <h4 class="mt-3">Thông tin thanh toán của bạn</h4>
            <p>Tên của bạn: {{ session()->get('ten_hocvien') }}</p>
            <p>Số dư tài khoản: {{ number_format(session()->get('sodutaikhoan')) }} VND</p>

            @if (session()->get('sodutaikhoan') <= 0)
                <p>Số dư của bạn không đủ</p>
                <i class="text-secondary">Nếu không đủ thì bạn có thể nạp thêm <a href="">tại đây</a> nhé !!!</i>
            @elseif(number_format(session()->get('sodutaikhoan') - $data->gia_khoahoc) <= 0)
                <p>Số dư còn lại: {{ number_format(session()->get('sodutaikhoan') - $data->gia_khoahoc) }} VNĐ</p>
                <p class="text-danger">Bạn không đủ tiền</p>
                <i class="text-secondary">Nếu không đủ thì bạn có thể nạp thêm <a href="">tại đây</a> nhé !!!</i>
            @else
                <p>Số dư còn lại: {{ number_format(session()->get('sodutaikhoan') - $data->gia_khoahoc) }} VNĐ</p>
            @endif
            <form action="{{ route('pay', ['id' => $data->id]) }}" method="POST">
                @csrf
                @method('PUT')
                <button class="btn btn-success">Hoàn thành thanh toán</button>
            </form>
        </div>
    </div>
@endsection