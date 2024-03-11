Đăng kí
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<form action="{{ route('process_register') }}" method="POST">
    @csrf
    Nhập tên của bạn
    <br>
    <input type="text" name="ten_hocvien" value="{{ old('ten_hocvien') }}">
    <br>
    email
    <br>
    <input type="text" name="email" value="{{ old('email') }}">
    <br>
    Mật khẩu
    <br>
    <input type="text" name="matkhau" value="{{ old('matkhau') }}">
    <br>
    số điện thoại
    <br>
    <input type="text" name="sodienthoai" value="{{ old('sodienthoai') }}">
    <br>
    <button>Đăng kí tài khoản</button>
</form>