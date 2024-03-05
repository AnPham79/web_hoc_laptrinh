<h1>Thêm khóa học</h1>

<form action="{{ route('Course.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    tiêu đề
    <br>
    <input type="text" name="tieude_khoahoc">
    <br>
    Ảnh minh họa
    <br>
    <input type="file" name="anhminhhoa">
    <br>
    Mô tả
    <br>
    <input type="text" name="mota_khoahoc">
    <br>
    Giá
    <input type="text" name="gia_khoahoc">
    <br>
    Tác giả
    <br>
    <input type="text" name="tacgia_khoahoc">
    <br>
    Danh mục
    <select name="FK_ma_danhmuc">
        @foreach ($CourseCategory as $each)
            <option value="{{ $each->id }}">{{ $each->tendanhmuc_khoahoc }}</option>
        @endforeach
    </select>
    <br>
    <button>Thêm</button>
</form>