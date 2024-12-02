<?php

namespace App\Http\Controllers;

use App\Models\ThreeDWallpaper_Panel as threeD_table;
use App\Models\Categories as ModelsCategories;

use Illuminate\Http\Request;

class ThreeDWallpaperController extends Controller
{
    public function index(Request $request)
    {
        $categories = ModelsCategories::all();

        $wallpapers = threeD_table::all();

        $data = $wallpapers->map(function ($wallpaper) {
            return [
                'id' => $wallpaper->id,
                'thumb_path' => $wallpaper->thumb_path,
                'likes' => $wallpaper->likes,
                'downloads' => $wallpaper->downloads,
                'hash_tags' => $wallpaper->hash_tags,
                'wp_show' => $wallpaper->wp_show,
                'featured' => $wallpaper->featured,
            ];
        });


        return view('threeD_wallpapers', [
            'categories' => $categories,
            'data' => $data
        ]);
    }

    public function create(Request $request)
    {
        $categories = ModelsCategories::where('type', '1')->get();

        return view('create_wallpaper', [
            'wallpaper_type' => '3d',
            'categories' => $categories,
        ]);
    }

    public function delete($id)
    {
        $category = threeD_table::findOrFail($id);
        $category->delete();
        return response()->json(['success' => true, 'message' => 'Deleted successfully.']);
    }
}
