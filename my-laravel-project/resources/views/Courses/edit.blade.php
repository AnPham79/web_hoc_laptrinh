<h1>Sửa khóa học</h1>

<form action="{{ route('Course.update', ['Course' => $data->id]) }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    tiêu đề
    <br>
    <input type="text" name="tieude_khoahoc" value="{{ $data->tieude_khoahoc }}">
    <br>
    Ảnh minh họa
    <br>
    <img src="{{ asset('../storage/app/' . $data->anhminhhoa) }}" alt="Hình ảnh" height="200px" width="200px">
    <br>
    <input type="file" name="anhminhhoa">
    <br>
    Mô tả
    <br>
    <input type="text" name="mota_khoahoc" value="{{ $data->mota_khoahoc }}">
    <br>
    Giá
    <input type="text" name="gia_khoahoc" value="{{ $data->gia_khoahoc }}">
    <br>
    Tác giả
    <br>
    <input type="text" name="tacgia_khoahoc" value="{{ $data->tacgia_khoahoc }}">
    <br>
    Danh mục
    <select name="FK_ma_danhmuc">
        @foreach ($CourseCategory as $each)
            <option value="{{ $each->id }}" {{ $each->id == $data->FK_ma_danhmuc ? 'selected' : '' }}>{{ $each->tendanhmuc_khoahoc }}</option>
        @endforeach
    </select>
    <br>
    <button>Sửa</button>
</form>
