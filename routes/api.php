<?php

use App\Http\Controllers\api\{
    DownloadsController,
    LikesController,
    SearchController,
    StaticWallpaperController as apiStaticWallpaperController,
    LiveWallpaperController as apiLiveWallpaperController,
    threeD_fourD_wallpaper as apiThreeFourDController,
};
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::prefix('v2')->group(function () {

    Route::resource('static-wallpaper', apiStaticWallpaperController::class);
    Route::resource('live-wallpaper', apiLiveWallpaperController::class);
    Route::resource('three-four-d-wallpaper', apiThreeFourDController::class);


    Route::get('/static_download_wp', [DownloadsController::class, 'static_wallpaper']);
    Route::get('/download_3d_wp', [DownloadsController::class, 'three_d_wallpaper']);
    Route::get('/download_live_wp', [DownloadsController::class, 'live_wallpaper']);

    // likes
    Route::get('/like_3d_wp', [LikesController::class, 'three_d_wallpaper']);
    Route::get('/like_live_wp', [LikesController::class, 'live_wallpaper']);
    Route::get('/like_static_wp', [LikesController::class, 'static_wallpaper']);

    // search apis
    Route::get('/search_all_category_api', [SearchController::class, 'static_wallpaper']);
});
