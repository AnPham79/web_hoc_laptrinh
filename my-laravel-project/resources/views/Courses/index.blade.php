<h1>Đây là trang quản lí khóa học</h1>

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
                <img src="{{ URL::asset('storage/app/imgCourse' . $each->anhminhhoa) }}" alt="Hình ảnh" height="200px" width="200px">
            </td>
            <td>{{ $each->mota_khoahoc }}</td>
            <td>{{ $each->gia_khoahoc }}</td>
            <td>{{ $each->FK_ma_danhmuc }}</td>
            <td>Sửa</td>
            <td>Xóa</td>
        </tr>
    @endforeach
</table>
