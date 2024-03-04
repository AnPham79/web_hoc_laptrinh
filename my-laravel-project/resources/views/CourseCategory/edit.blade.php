<h1>Sửa danh mục khóa học</h1>
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<form action="{{ route('CourseCategory.update', $CourseCategory)}}" method="POST">
    @csrf
    @method('PUT')
    <input type="text" name="tendanhmuc_khoahoc" value="{{ $CourseCategory->tendanhmuc_khoahoc }}">
    <br>
    <button>Sửa</button>
</form>