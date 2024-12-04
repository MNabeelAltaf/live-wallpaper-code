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

        $static_wallpapers = StaticWallpaper::with('category.events')->get()->map(function ($wallpaper) {
            $category = $wallpaper->category;

            return [
                'id' => (string) $wallpaper->id,
                'cat_name' => $category ? $category->name : '',
                'thumbPath' => url(Storage::url($wallpaper->thumb_path)),
                'has_event' => $category && $category->events->isNotEmpty(),
            ];
        })->sortByDesc('has_event')
            ->values()
            ->map(function ($wallpaper) {
                unset($wallpaper['has_event']);
                return $wallpaper;
            });


        $grouped_wallpapers = $static_wallpapers->groupBy('cat_name');


        $response = [];

        $first_item_wallpapers = $grouped_wallpapers->map(function ($wallpapers) {
            return $wallpapers->first();
        })->values()->all();

        $response[] = [
            'viewType' => '1',
            'wallpapers' => $first_item_wallpapers,
        ];


        $categories = ModelsCategories::all();

        foreach ($categories as $category) {
            $category_wallpapers = StaticWallpaper::whereHas('category', function ($query) use ($category) {
                $query->where('name', $category->name);
            })->get()->map(function ($wallpaper) use ($category) {
                return [
                    'id' => (string) $wallpaper->id,
                    'blurPath' => url(Storage::url('Static_Wallpapers/' . $category->name . '/blur/' . $wallpaper->blur_path)),
                    'likes' => (string) $wallpaper->likes,
                    'downloads' => (string) $wallpaper->Downloads,
                    'category' => $category->name,
                    'cat_id' => (string) $wallpaper->cat_id,
                    'tags' => $wallpaper->hash_tags,
                    'thumbPath' => url(Storage::url('Static_Wallpapers/' . $category->name . '/thumb/' . $wallpaper->thumb_path)),
                    'img_path' => url(Storage::url('Static_Wallpapers/' . $category->name . '/wallpaper/' . $wallpaper->img_path)),
                ];
            });


            if ($category_wallpapers->isNotEmpty()) {
                $response[] = [
                    'viewType' => '4',
                    'wallpapers' => $category_wallpapers,
                ];
            }
        }

        return response()->json([
            'response' => $response,
        ]);


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
