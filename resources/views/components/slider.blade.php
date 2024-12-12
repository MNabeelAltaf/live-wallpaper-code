<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Slider</title>
    <link rel="stylesheet" href="{{ asset('assets/css/slider.css') }}">
</head>
<body>

    <div class="carousel">
        <ul class="carousel__list">

            @foreach ($data as $index => $thumbs)

            <li class="carousel__item"  data-pos="{{ $index - 2 }}">
                <img src="{{ url(Storage::url($thumbs)) }}" alt="{{ $thumbs }}">
            </li>
            @endforeach

        </ul>
    </div>


      <script src="{{ asset('assets/js/slider.js') }}"></script>

</body>
</html>
