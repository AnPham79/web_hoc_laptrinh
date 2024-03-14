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
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
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
    @if(session('loginError'))
    <div class="alert alert-danger">
        {{ session('loginError') }}
    </div>
@endif
<form action="{{ route('process_login') }}" method="POST">
    @csrf
  <div class="container">
    <h1>Đăng nhập</h1>
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Nhập email của bạn" name="email" id="email" required value="{{ old('email') }}">

    <label for="psw"><b>Mật khẩu</b></label>
    <input type="password" placeholder="Nhập mật khẩu của bạn" name="matkhau" id="psw" required>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="{{ route('register') }}">Đăng kí</a>.</p>
  </div>
</form>

</body>
</html>
