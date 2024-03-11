<h1>Đăng nhập</h1>
@if(session('loginError'))
    <div class="alert alert-danger">
        {{ session('loginError') }}
    </div>
@endif
<form action="{{ route('process_login') }}" method="POST">
    @csrf
    Nhập email của bạn
    <br>
    <input type="text" name="email" value="{{ old('email') }}">
    <br>
    mật khẩu
    <br>
    <input type="text" name="matkhau">
    <br>
    <button>đăng nhập</button>
    <br>
    hoặc
    <br>
    <a href="{{ route('register') }}">Đăng kí</a>
</form>