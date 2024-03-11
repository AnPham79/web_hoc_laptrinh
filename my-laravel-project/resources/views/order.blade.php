<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>{{ $data->tieude_khoahoc }}</h1>
    <img src="{{ asset('../storage/app/' . $data->anhminhhoa) }}" alt="Hình ảnh" height="200px" width="200px">
    <p>{{ $data->setNumberFormat() }} VND</p>
    <p>{{ $data->CourseCategory->tendanhmuc_khoahoc }}</p>
    <p>{{ $data->tacgia_khoahoc }}</p>
    <br>
    <h4>Tổng tiền bạn phải thanh toán {{ $data->setNumberFormat() }}</h4>
    <h4>THông tin của bạn</h4>
    Tên của bạn: {{ session()->get('ten_hocvien')}}
    <br>
    Email của bạn: {{ session()->get('email')}}
    <br>
    Số dư tài khoản: {{ session()->get('sodutaikhoan')}}
    <br>
    <form action="{{ route('pay', ['id' => $data->id]) }}" method="POST">
        @csrf
        @method('PUT')
        <button>Mua</button>
    </form>    
</body>
</html>