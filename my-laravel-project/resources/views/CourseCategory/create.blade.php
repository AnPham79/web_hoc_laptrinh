<h1>Thêm danh mục khóa học</h1>
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<form action="{{ route('CourseCategory.store') }}" method="POST">
    @csrf
    Tên danh mục
    <br>
    <input type="text" name="tendanhmuc_khoahoc">
    <br>
    <button>Thêm</button>
</form>