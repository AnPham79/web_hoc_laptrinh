<h1>Đây là trang quản lí khóa học</h1>
<br>
    Xin chào nhân viên: {{ session()->get('ten_hocvien')}}
    <a href="{{ route('logout') }}">
        Đăng xuất
    </a>
<br>

<a href="{{ route('Course.create') }}">Thêm khóa học tại đây</a>

<table border="1" width="100%">
    <tr>
        <td>#</td>
        <td>Tên danh mục</td>
        <td>Mô tả</td>
        <td>Ảnh</td>
        <td>Giá</td>
        <td>Danh mục</td>
        <td>Sửa</td>
        <td>Xóa</td>
    </tr>
    @foreach ($data as $each)
        <tr>
            <td>{{ $each->id }}</td>
            <td>{{ $each->tieude_khoahoc }}</td>
            <td>
                <img src="{{ asset('../storage/app/' . $each->anhminhhoa) }}" alt="Hình ảnh" height="200px" width="200px">
            </td>
            <td>{{ $each->mota_khoahoc }}</td>
            <td>{{ $each->setNumberFormat() }} VND</td>
            <td>{{ $each->CourseCategory->tendanhmuc_khoahoc }}</td>
            <td>
                <a href="{{ route('Course.edit', ['Course' => $each->id]) }}">
                    Sửa
                </a>
            </td>
            <td>
                <form action="{{ route('Course.destroy', ['Course' => $each->id]) }}" method="post">
                    @csrf
                    @method('DELETE')
                    <button>Xóa</button>
                </form>
            </td>
        </tr>
    @endforeach
</table>
