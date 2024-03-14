<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: black;
        }

        * {
            box-sizing: border-box;
        }

        /* Add padding to containers */
        .container {
            padding: 16px;
            background-color: white;
        }

        /* Full-width input fields */
        input[type=text],
        input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus,
        input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        /* Overwrite default styles of hr */
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for the submit button */
        .registerbtn {
            background-color: #04AA6D;
            color: white;
            padding: 16px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        .registerbtn:hover {
            opacity: 1;
        }

        /* Add a blue text color to links */
        a {
            color: dodgerblue;
        }

        /* Set a grey background color and center the text of the "sign in" section */
        .signin {
            background-color: #f1f1f1;
            text-align: center;
        }
    </style>
</head>

<body>
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <form action="{{ route('process_register') }}" method="POST">
        @csrf
        <div class="container">
            <h1>Đăng kí</h1>
            <hr>
            <label for="email"><b>Tên của bạn</b></label>
            <input type="text" placeholder="Nhập tên của bạn" name="ten_hocvien" id="email" required
                value="{{ old('ten_hocvien') }}">
            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Nhập email của bạn" name="email" id="email" required
                value="{{ old('email') }}">
            <label for="psw"><b>Mật khẩu</b></label>
            <input type="text" placeholder="Nhập mật khẩu của bạn" name="matkhau" id="psw" value="{{ old('matkhau') }}" required>
            <label for="email"><b>Số điện thoai</b></label>
            <input type="text" placeholder="Nhập số điện thoại của bạn" name="sodienthoai" id="email" required
                value="{{ old('sodienthoai') }}">
            <button type="submit" class="registerbtn">Register</button>
        </div>

        <div class="container signin">
            <p>Already have an account? <a href="{{ route('login') }}">Đăng nhập</a>.</p>
        </div>
    </form>

</body>

</html>
