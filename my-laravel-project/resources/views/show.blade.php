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
        @if ($courseUser)
            <div class="col-lg-10 col-md-12 col-sm-12">
                <div class="row">
                    <h2 class="mb-5">{{ $data->tieude_khoahoc }}</h2>
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <img src="{{ asset('../storage/app/' . $data->anhminhhoa) }}" alt class="rounded-4 w-100">
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 mt-lg-0 mt-3">
                        <h2>Loại khóa học: <b class="text-success">Trả
                                phí</b></h2>
                        <p>Danh mục khóa học: {{ $data->CourseCategory->tendanhmuc_khoahoc }}</p>
                        <p>tác giả: {{ $data->tacgia_khoahoc }}</p>
                    </div>
                </div>
                <h4 class="mt-5">Danh sách bài học</h4>
                <ul class="navbar-nav ms-auto mb-5 mb-lg-0">
                    @foreach ($lessons as $lesson)
                        <li class="nav-item border-top border-bottom">
                            <a class="nav-link"
                                href="{{ route('showLesson', ['id' => $lesson->id]) }}">{{ $lesson->tieude_baihoc }}</a>
                        </li>
                    @endforeach
                </ul>
            @else
                <div class="col-lg-10 col-md-12 col-sm-12">
                    <div class="row">
                        <h2 class="mb-5">{{ $data->tieude_khoahoc }}</h2>
                        <div class="col-lg-6 col-md-12 col-sm-12">
                            <img src="{{ asset('../storage/app/' . $data->anhminhhoa) }}" alt class="rounded-4 w-100">
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 mt-lg-0 mt-3">
                            <h2>Loại khóa học: <b class="text-success">Trả
                                    phí</b></h2>
                            <p>Giá khóa học: {{ $data->setNumberFormat() }} VNĐ</p>
                            <p>Danh mục khóa học: {{ $data->CourseCategory->tendanhmuc_khoahoc }}</p>
                            <p>tác giả: {{ $data->tacgia_khoahoc }}</p>
                            <button class="btn btn-success"><a href = "{{ route('order', ['id' => $data->id]) }}"
                                    class="text-white text-decoration-none">Mua
                                    ngay</a></button>
                        </div>
                    </div>
                    <h2 class="mt-5">Mô tả khóa học</h2>
                    <p class="mb-5">{{ $data->mota_khoahoc }}
                    </p>
        @endif
        @foreach ($cmt as $data)
            <div class="row align-items-center border-top border-bottom py-1 my-3">
                <div class="col-lg-2 col-md-2 col-sm-2 d-flex avt-comment">
                    <img src="{{ asset('../storage/app/' . $data->anhdaidien) }}" class="rounded-circle overflow-hidden object-fit-cover me-3" alt="Avatar">
                    <span class="name-user fw-bold">{{ $data->NameUserInComment->ten_hocvien }}</span>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-10">
                    <div class="rate d-flex align-items-center">
                        <i class='bx bxs-star text-warning'></i>
                        <i class='bx bxs-star text-warning'></i>
                        <i class='bx bxs-star text-warning'></i>
                        <i class='bx bxs-star text-warning'></i>
                        <i class='bx bxs-star text-warning'></i>
                        <div class="date text-secondary ms-auto">
                            <i>{{ $data->created_at }}</i>
                        </div>
                    </div>
                    <div class="comment">
                        <p class="mb-0">{{ $data->noidung_binhluan }}</p>
                    </div>
                </div>
            </div>
        @endforeach
        <h3 class="mt-5">Đánh giá của bạn</h3>
        <form id="commentForm" action="{{ route('comment', ['id' => $data->id]) }}" method="POST">
            @csrf
            <p>{{ session()->get('ten_hocvien') }}</p>
            <p>{{ session()->get('email') }}</p>
            <div class="mb-3">
                <label for="commentInput" class="form-label">Bình luận của bạn</label>
                <textarea class="form-control" id="commentInput" name="noidung_binhluan" rows="4" placeholder="Nhập bình luận của bạn"></textarea>
            </div>
            <button type="submit" class="mt-4 btn btn-primary">Đăng</button>
        </form>        
    </div>
    </div>
@endsection
