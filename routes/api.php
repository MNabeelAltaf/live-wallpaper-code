<?php

use App\Http\Controllers\api\StaticWallpaperController as apiStaticWallpaperController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::prefix('v2')->group(function () {
    Route::resource('static-wallpaper', apiStaticWallpaperController::class);
});
