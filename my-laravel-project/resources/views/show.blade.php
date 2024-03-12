<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product Detail</title>
</head>

<body>
    @if ($courseUser)
        <h1>{{ $data->tieude_khoahoc }}</h1>
        <img src="{{ asset('../storage/app/' . $data->anhminhhoa) }}" alt="Hình ảnh" height="200px" width="200px">
        <p>{{ $data->mota_khoahoc }}</p>
        <p>{{ $data->CourseCategory->tendanhmuc_khoahoc }}</p>
        <p>{{ $data->tacgia_khoahoc }}</p>
        <h2>Các bài học</h2>
        <ul>
            @foreach ($lessons as $lesson)
                <li><a href="{{ route('showLesson', ['id' => $lesson->id]) }}">{{ $lesson->tieude_baihoc }}</a></li>
            @endforeach

        </ul>
    @else
        <h1>{{ $data->tieude_khoahoc }}</h1>
        <img src="{{ asset('../storage/app/' . $data->anhminhhoa) }}" alt="Hình ảnh" height="200px" width="200px">
        <p>{{ $data->mota_khoahoc }}</p>
        <p>{{ $data->setNumberFormat() }} VND</p>
        <p>{{ $data->CourseCategory->tendanhmuc_khoahoc }}</p>
        <p>{{ $data->tacgia_khoahoc }}</p>
        <button>
            <a href="{{ route('order', ['id' => $data->id]) }}">
                Mua khóa học
            </a>
        </button>
    @endif

    <form action="{{ route('comment', ['id' => $data->id]) }}" method="POST">
        @csrf
        <textarea name="noidung_binhluan" id="" cols="30" rows="10"></textarea>
        <button type="submit">Đăng bình luận</button>
    </form>    
</body>

</html>
