<h1>Đây là trang chủ</h1>

@if (session()->get('ten_hocvien'))
    <h5>Xin chào: {{ session()->get('ten_hocvien') }} </h5>
    <a href="{{ route('logout') }}">
        Đăng xuất
    </a>
@else
    <a href="{{ route('register') }}">
        Đăng kí
    </a>
    <br>
    <a href="{{ route('login') }}">
        Đăng nhập
    </a>
@endif

<h1>Khóa học của bạn đăng kí</h1>

<table border="1" width="100%">
    <form action=""">
        <input type="search" name="q" value="{{ $search }}">
    </form>
    <tr>
        <td>#</td>
        <td>Tên danh mục</td>
        <td>Mô tả</td>
        <td>Ảnh</td>
        <td>Giá</td>
        <td>Danh mục</td>
    </tr>
    @foreach ($data as $each)
        <tr>
            <td>{{ $each->id }}</td>
            <td>
                <a href="{{ route('show', ['id' => $each->id]) }}">
                    {{ $each->tieude_khoahoc }}
                </a>
            </td>
            <td>
                <img src="{{ asset('../storage/app/' . $each->anhminhhoa) }}" alt="Hình ảnh" height="200px"
                    width="200px">
            </td>
            <td>{{ $each->mota_khoahoc }}</td>
            <td>{{ $each->setNumberFormat() }} VND</td>
            <td>{{ $each->CourseCategory->tendanhmuc_khoahoc }}</td>
        </tr>
    @endforeach
</table>
{{ $data->links() }}
