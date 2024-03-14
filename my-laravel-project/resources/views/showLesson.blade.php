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
                <h1 class="mt-5">{{ $lessonDetail->tieude_baihoc }}</h1>
                <p>{{ $lessonDetail->noidung_baihoc }}</p>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item"
                        src="https://www.youtube.com/embed/KJeNNGNytyI?si=aFZBtXtvcLruX5us" title="YouTube video player"
                        allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
@endsection
