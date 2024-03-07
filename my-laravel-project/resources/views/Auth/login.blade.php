<h1>Đăng nhập</h1>
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<form action="{{ route('process_login') }}" method="POST">
    @csrf
    Nhập email của bạn
    <br>
    <input type="text" name="email">
    <br>
    mật khẩu
    <br>
    <input type="text" name="matkhau">
    <br>
    <button>đăng nhập</button>
</form>