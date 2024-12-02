<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LiveWallpaperController extends Controller
{
    public function index()
    {
        return view('live_wallpapers');
    }
}
