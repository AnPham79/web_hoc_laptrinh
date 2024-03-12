<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

</head>

<body>
    <form action="{{ route('Lesson.store') }}" method="POST">
        @csrf
        tên bài học
        <br>
        <input type="text" name="tieude_baihoc">
        <br>
        Nội dung bài học
        <br>
        <textarea name="noidung_baihoc" id="noidung_baihoc" cols="30" rows="10"></textarea>
        <br>
        video_baihoc
        <br>
        <input type="text" name="video_baihoc">
        <br>
        Tên khóa học
        <select name="FK_ma_khoahoc">
            @foreach ($data as $item)
                <option value="{{ $item->id }}">{{ $item->tieude_khoahoc }}</option>
            @endforeach
        </select>
        <br>
        <button>Thêm</button>
    </form>
    {{-- <script src="{{ asset('ckeditor5/ckeditor5.js') }}"></script>
    <script>
        ClassicEditor
            .create(document.querySelector('#noidung_baihoc'))
            .then(editor => {
                console.log(editor);
            })
            .catch(error => {
                console.error(error);
            });
    </script> --}}
</body>

</html>
