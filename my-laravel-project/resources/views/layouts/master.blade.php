<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('Web học lập trình F88')</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<body>
    @include('layouts.header')

    @yield('content')

    @include('layouts.footer')
    
    <script src="{{ asset('js/bootstrap.bundle.min.js') }}"></script>
    <script>
        function setActive(element) {
            var links = document.querySelectorAll('.nav-link');
            links.forEach(function(link) {
                link.classList.remove('active', 'bg-active');
            });
            element.classList.add('active', 'bg-active');
        }
    </script>
</body>

</html>
