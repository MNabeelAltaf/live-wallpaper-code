<?php

use App\Http\Controllers\static_wallpapers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\live_wallpapers;


Route::prefix('v2')->group(function () {
    Route::apiResource('static-wallpaper', static_wallpapers::class);
    Route::apiResource('live-wallpaper', live_wallpapers::class);
});
