<?php

namespace App\Http\Controllers\Api;

use App\Models\event_category as event;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use App\Models\Categories as ModelsCategories;
use App\Models\StaticWallpaper;
use Illuminate\Http\Request;

class StaticWallpaperController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $static_wallpapers = StaticWallpaper::with(['category', 'events'])->get();


        return response()->json(['response' => $static_wallpapers ]);



        $static_wallpapers = StaticWallpaper::get()->map(function ($wallpaper) {
            $category = ModelsCategories::find($wallpaper->cat_id);

            $event = event::findOrFail($wallpaper->cat_id);

            $cat_name = $category ? $category->name : '';
            $event_id = $event ?  $event->id : null;


            return [
                'id' => $wallpaper->id,

                'events'=>$event,


                'cat_name' => $cat_name,
                'thumbPath' => url(Storage::url('Static_Wallpapers/' . $wallpaper->thumb_wp)),
            ];
        })->toArray();

        $response = [
            'wallpapers' => $static_wallpapers,
        ];

        return response()->json(['response' => $response]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
