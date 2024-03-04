<h1>Đây là trang quản lí danh mục khóa học</h1>

<a href="{{ route('CourseCategory.create') }}">Thêm danh mục khóa học tại đây</a>

<table border="1" width="100%">
    <tr>
        <td>#</td>
        <td>Tên danh mục</td>
        <td>Sửa</td>
        <td>Xóa</td>
    </tr>
    @foreach ($data as $each)
        <tr>
            <td>{{ $each->id }}</td>
            <td>{{ $each->tendanhmuc_khoahoc }}</td>
            <td>
                <a href="{{ route('CourseCategory.edit', ['CourseCategory' => $each->id]) }}">
                    Sửa
                </a>
            </td>
            <td>
                <form action="{{ route('CourseCategory.destroy', ['CourseCategory' => $each->id ]) }}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button>xóa</button>
                </form>
            </td>
        </tr>
    @endforeach
</table>
