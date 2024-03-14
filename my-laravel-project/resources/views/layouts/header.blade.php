<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="{{ asset('img/logo.png') }}" alt=""></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Học lập trình để chạy Grab</a>
                </li>
                <li class="nav-item d-block d-sm-none">
                    <a class="nav-link" href="#">Trang chủ</a>
                </li>
                <li class="nav-item d-block d-sm-none">
                    <a class="nav-link" href="#">Lộ trình</a>
                </li>
                <li class="nav-item d-block d-sm-none">
                    <a class="nav-link" href="#">Bảng tin</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" name="q" placeholder="Search" aria-label="Search" value="">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
            @if (session()->get('ten_hocvien'))
                <div class="nav-item dropdown navbar-nav ms-auto mb-2 mb-lg-0">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Xin chào : <b>{{ session()->get('ten_hocvien') }}</b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="{{ route('logout') }}">Đăng xuất</a></li>
                        <li><a class="dropdown-item" href="#">Số dư: {{ session()->get('sodutaikhoan') }} VND</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Cài đặt</a></li>
                    </ul>
                </div>
            @else
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('register') }}">Đăng kí</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">Đăng nhập</a>
                    </li>
                </ul>
            @endif
        </div>
    </div>
</nav>