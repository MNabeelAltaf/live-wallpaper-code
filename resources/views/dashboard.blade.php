<x-app-layout>

    <div class="collapse show dash-content">
        <div class="container-fluid">
            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-flex align-items-center justify-content-between">


                    </div>
                </div>
            </div>
            <!-- end page title -->

            <!-- start dash info -->
            <div class="row">
                <div class="col-xl-12">
                    <div class="card dash-header-box shadow-none border-0">
                        <div class="card-body p-0">
                            <div class="row row-cols-xxl-6 row-cols-md-3 row-cols-1 g-0">
                                <div class="col">
                                    <div class="mt-md-0 py-3 px-4 mx-2">
                                        <p class="text-white-50 mb-2 text-truncate">Static Wallpaper</p>
                                        <h3 class="text-white mb-0">{{ $data['wallpapers'] }}</h3>
                                    </div>
                                </div><!-- end col -->

                                <div class="col">
                                    <div class="mt-3 mt-md-0 py-3 px-4 mx-2">
                                        <p class="text-white-50 mb-2 text-truncate">Live Wallpaper</p>
                                        <h3 class="text-white mb-0">{{ $data['liveWallpapers'] }}</h3>
                                    </div>
                                </div><!-- end col -->

                                <div class="col">
                                    <div class="mt-3 mt-md-0 py-3 px-4 mx-2">
                                        <p class="text-white-50 mb-2 text-truncate">3D Wallpaper</p>
                                        <h3 class="text-white mb-0">{{ $data['threeDWallpapers'] }}</h3>
                                    </div>
                                </div><!-- end col -->

                                <div class="col">
                                    <div class="mt-3 mt-md-0 py-3 px-4 mx-2">
                                        <p class="text-white-50 mb-2 text-truncate">4D Wallpaper</p>
                                        <h3 class="text-white mb-0">{{ $data['fourDWallpapers'] }}</h3>
                                    </div>
                                </div><!-- end col -->

                                <div class="col">
                                    <div class="mt-3 mt-lg-0 py-3 px-4 mx-2">
                                        <p class="text-white-50 mb-2 text-truncate">Categories</p>
                                        <h3 class="text-white mb-0">{{ $data['categories'] }}</h3>
                                    </div>
                                </div><!-- end col -->

                                <div class="col">
                                    <div class="mt-3 mt-lg-0 py-3 px-4 mx-2">
                                        <p class="text-white-50 mb-2 text-truncate">Events</p>
                                        <h3 class="text-white mb-0">{{ $data['events'] }}</h3>
                                    </div>
                                </div><!-- end col -->

                            </div><!-- end row -->
                        </div><!-- end card body -->
                    </div><!-- end card -->
                </div><!-- end col -->
            </div>
            <!-- end dash info -->
        </div>
    </div>



    <div class="row my-5">
        <div class="col-xl-7">
            <div class="row">
                <div class="col-xl-6">
                    <div class="card">
                        <div class="card-body pb-3">
                            <div class="d-flex align-items-start">
                                <div class="flex-grow-1">
                                    <h5 class="card-title mb-2">Wallpaper Type</h5>
                                </div>
                                <div class="flex-shrink-0">
                                    <div class="dropdown">
                                        <a class="dropdown-toggle text-muted" href="#" data-bs-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                            Last Changed
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="mt-3 pt-1">
                                <div class="social-box row align-items-center border-bottom pt-0 g-0">
                                    <div class="col-12 col-sm-5">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar">
                                                    <div class="avatar-title rounded bg-primary">
                                                        <i class="mdi mdi-image font-size-20"></i>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1 ">
                                                <h5 class="font-size-15 mb-1 text-truncate">Static Wallpaper</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col col-sm-3">
                                        <div class="mt-3 mt-md-0 text-md-end">

                                        </div>
                                    </div>
                                    <div class="col-auto col-sm-4">
                                        <div class="mt-3 mt-md-0 text-end">
                                            <h5 class="font-size-15 mb-1 text-truncate">
                                                {{ $data['staticWallpapersLastModified'] }}</h5>

                                        </div>
                                    </div>
                                </div>

                                <div class="social-box row align-items-center border-bottom g-0">
                                    <div class="col-12 col-sm-5">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar">
                                                    <div class="avatar-title rounded bg-info">
                                                        <i class="mdi mdi-image font-size-20"></i>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden">
                                                <h5 class="font-size-15 mb-1 text-truncate">Live Wallpaper</h5>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col col-sm-3">
                                        <div class="mt-3 mt-md-0 text-md-end">

                                        </div>
                                    </div>
                                    <div class="col-auto col-sm-4">
                                        <div class="mt-3 mt-md-0 text-end">
                                            <h5 class="font-size-15 mb-1 text-truncate">
                                                {{ $data['liveWallpapersLastModifiedDate'] }}</h5>
                                            <p class="text-muted mb-0">

                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="social-box row align-items-center border-bottom g-0">
                                    <div class="col-12 col-sm-5">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar">
                                                    <div class="avatar-title rounded bg-danger">
                                                        <i class="mdi mdi-image font-size-20"></i>


                                                    </div>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden">
                                                <h5 class="font-size-15 mb-1 text-truncate">3D Wallpaper</h5>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col col-sm-3">
                                        <div class="mt-3 mt-md-0 text-md-end">

                                        </div>
                                    </div>
                                    <div class="col-auto col-sm-4">
                                        <div class="mt-3 mt-md-0 text-end">
                                            <h5 class="font-size-15 mb-1 text-truncate">
                                                {{ $data['threeDWallpaperLastModificationDate'] }}</h5>
                                            <p class="text-muted mb-0">


                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="social-box row align-items-center border-bottom g-0">
                                    <div class="col-12 col-sm-5">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar">
                                                    <div class="avatar-title rounded bg-danger">
                                                        <i class="mdi mdi-image font-size-20"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1 overflow-hidden">
                                                <h5 class="font-size-15 mb-1 text-truncate">4D Wallpaper</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col col-sm-3">
                                        <div class="mt-3 mt-md-0 text-md-end">

                                        </div>
                                    </div>
                                    <div class="col-auto col-sm-4">
                                        <div class="mt-3 mt-md-0 text-end">
                                            <h5 class="font-size-15 mb-1 text-truncate">
                                                {{ $data['fourDWallpaperLastModification'] }}</h5>
                                            <p class="text-muted mb-0">

                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="card">
                        <div class="card-body pb-1">
                            <div class="d-flex align-items-start">
                                <div class="flex-grow-1">
                                    <h5 class="card-title mb-2">Coming Events</h5>
                                </div>
                                <div class="flex-shrink-0">
                                    <div class="dropdown">
                                        <a class=" dropdown-toggle" href="#" id="dropdownMenuButton2"
                                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span class="text-muted">Days Left</span>
                                        </a>

                                    </div>
                                </div>
                            </div>

                            <div class="mx-n4 px-4" data-simplebar style="height: 258px;">
                                <div class="mt-3">
                                    <ol class="activity-checkout mb-0 mt-2 ps-3">

                                        @foreach ($data['events_days'] as $event_data)
                                            <li class="checkout-item crypto-activity">
                                                <div class="avatar checkout-icon">
                                                    <div class="avatar-title rounded-circle bg-primary">
                                                        <i class="mdi mdi-calendar-check text-white font-size-17"></i>
                                                    </div>
                                                </div>
                                                <div class="feed-item-list">
                                                    <div class="d-flex">
                                                        <div class="flex-grow-1 overflow-hidden me-4">
                                                            <h5 class="font-size-15 mb-1 text-truncate">
                                                                {{ $event_data['event_name'] }}
                                                            </h5>
                                                        </div>
                                                        <div class="flex-shrink-0 text-end my-4">
                                                            <h5 class="mb-1 font-size-15">
                                                                @if ($event_data['left_days'] > 0)
                                                                    <p class="text-success">
                                                                        {{ $event_data['left_days'] }} days left
                                                                    </p>
                                                                @elseif ($event_data['left_days'] < 0)
                                                                    <p class="text-danger">
                                                                        {{ abs($event_data['left_days']) }} days gone
                                                                    </p>
                                                                @endif

                                                            </h5>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        @endforeach


                                    </ol>
                                </div>
                            </div>

                            <div id="chart-area" data-colors='["--bs-primary"]' class="apex-charts"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-5">
            <div class="card">
                <div class="card-body">

                    <div class="d-flex align-items-start">
                        <div class="flex-grow-1">
                            <h5 class="card-title">Top Wallpapers</h5>
                        </div>
                    </div>

                    <div class="slider mt-4">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="card dash-product-box shadow-none border mb-0">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="card-body">
                                                    <div class="pricing-badge">
                                                        <span class="badge bg-success">Top Liked</span>
                                                    </div>
                                                    <div class="dash-product-img">
                                                        <img src="{{ $data['most_liked_download_wallpaper']['max_likes_wallpaper'] }}"
                                                            class="img-fluid" alt="">
                                                    </div>
                                                    <p><b>Likes: </b>  {{ $data['most_liked_download_wallpaper']['max_likes'] }} 👍</p>

                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="card-body">
                                                    <div class="pricing-badge">
                                                        <span class="badge bg-success">Top Download</span>
                                                    </div>
                                                    <div class="dash-product-img">
                                                        <img src="{{ $data['most_liked_download_wallpaper']['max_downloads_wallpaper'] }}"
                                                            class="img-fluid" alt="">
                                                    </div>
                                                    <p><b>Downloads: </b>  {{ $data['most_liked_download_wallpaper']['max_downloads'] }} ⬇️</p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



</x-app-layout>
