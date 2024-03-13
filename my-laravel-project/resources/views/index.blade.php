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
                            class='bx bx-credit-card-front mx-2'></i>Bảng tin</a>
                </li>
            </ul>
        </div>
        <div class="col-lg-10 col-md-12 col-sm-12">
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="{{ asset('img/banner1.jpg') }}" class="d-block w-100 rounded-4" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="{{ asset('img/banner2.jpg') }}" class="d-block w-100 rounded-4" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="{{ asset('img/banner3.jpg') }}" class="d-block w-100 rounded-4" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

            <h4 class="text-dark mt-4 fw-bold">Khóa học của bạn</h4>
            @if ($courseUserOwn)
                <div class="row">
                    @foreach ($courseUserOwn as $each)
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <div class="prd-card">
                                <div class="img-course position-relative">
                                    <img src="{{ asset('../storage/app/' . $each->anhminhhoa) }}" class="w-100 rounded-4"
                                        alt="">
                                    <div class="blur position-absolute rounded-4">
                                        <a href="{{ route('show', ['id' => $each->id]) }}">Xem khóa học</a>
                                    </div>
                                </div>
                                <span><a href="{{ route('show', ['id' => $each->id]) }}" class="text-decoration-none my-2">
                                        {{ $each->tieude_khoahoc }}
                                    </a></span>
                                <p>Chuyên đề: <b>{{ $each->CourseCategory->tendanhmuc_khoahoc }}</b></p>
                            </div>
                        </div>
                    @endforeach
                </div>
            @else
                <div class="undefine-course d-flex justify-content-center align-items-center">
                    <img src="./img/chuamuckhoahoc.png" alt="">
                    <p>ui, bạn chưa mua khóa học nào >.< </p>
                </div>
            @endif

            <h4 class="text-dark mt-4 fw-bold">Tất cả khóa học</h4>
            <div class="row">
                @foreach ($data as $each)
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="prd-card">
                            <div class="img-course position-relative">
                                <img src="{{ asset('../storage/app/' . $each->anhminhhoa) }}" class="w-100 rounded-4"
                                    alt="">
                                <div class="blur position-absolute rounded-4">
                                    <a href="{{ route('show', ['id' => $each->id]) }}">Xem khóa học</a>
                                </div>
                            </div>
                            <span><a href="{{ route('show', ['id' => $each->id]) }}">
                                    {{ $each->tieude_khoahoc }}
                                </a></span>
                            <p>Chuyên đề: <b>{{ $each->CourseCategory->tendanhmuc_khoahoc }}</b></p>
                        </div>
                    </div>
                @endforeach
            </div>
            {{ $data->links() }}
        </div>
    </div>
@endsection
