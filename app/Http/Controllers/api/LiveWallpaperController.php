<?php

namespace App\Http\Controllers\api;
use Illuminate\Support\Facades\Storage;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{
    event_category as event,
    Categories as ModelsCategories,
    LiveWallpapers_Panel
};
class LiveWallpaperController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $live_wallpapers = LiveWallpapers_Panel::with('category.events')->get()->map(function ($wallpaper) {
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

        return response()->json($live_wallpapers);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
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
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
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
