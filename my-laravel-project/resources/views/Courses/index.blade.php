<h1>Đây là trang quản lí khóa học</h1>

<a href="{{ route('Course.create') }}">Thêm khóa học tại đây</a>

<table border="1" width="100%">
    <tr>
        <td>#</td>
        <td>Tên danh mục</td>
        <td>Mô tả</td>
        <td>Giá</td>
        <td>Tác giả</td>
        <td>Danh mục</td>
        <td>Ngày tạo</td>
        <td>Ngày sửa</td>
        <td>Sửa</td>
        <td>Xóa</td>
    </tr>
    @foreach ($data as $each)
        <tr>
            <td>{{ $each->id }}</td>
            <td>{{ $each->tieude_khoahoc }}</td>
            <td>{{ $each->mota_khoahoc }}</td>
            <td>{{ $each->gia_khoahoc }}</td>
            <td>{{ $each->tacgia_khoahoc }}</td>
            <td>{{ $each->FK_ma_danhmuc }}</td>
            <td>{{ $each->created_at }}</td>
            <td>{{ $each->updated_at }}</td>
            <td>Sửa</td>
            <td>Xóa</td>
        </tr>
    @endforeach
</table>
