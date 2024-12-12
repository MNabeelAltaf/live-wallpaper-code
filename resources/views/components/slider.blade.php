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



        {{-- <li class="carousel__item" data-pos="-2">
            <img src="" alt="">
        </li>
        <li class="carousel__item" data-pos="-1">2</li>
        <li class="carousel__item" data-pos="0">3</li>
        <li class="carousel__item" data-pos="1">4</li>
        <li class="carousel__item" data-pos="2">5</li> --}}


        </ul>
    </div>


      <script src="{{ asset('assets/js/slider.js') }}"></script>

</body>
</html>
