<?php

namespace App\Http\Controllers;

use App\Models\Categories as ModelsCategories;
use App\Models\StaticWallpaper;
use Illuminate\Http\Request;

class StaticWallpaperController extends Controller
{
    public function index(Request $request)
    {
        $categories = ModelsCategories::where('type', '1')->get();

        // Get the selected category or default to the first category
        $selectedCategoryId = $request->query('category', $categories->first()->id);

        // Fetch wallpapers for the selected category
        $wallpapers = StaticWallpaper::where('cat_id', $selectedCategoryId)->get();

        // Format wallpaper data
        $data = $wallpapers->map(function ($wallpaper) {
            return [
                'id' => $wallpaper->id,
                'img_path' => $wallpaper->img_path,
                'thumb_path' => $wallpaper->thumb_path,
                'likes' => $wallpaper->likes,
                'downloads' => $wallpaper->downloads,
                'hash_tags' => $wallpaper->hash_tags,
                'wp_show' => $wallpaper->wp_show,
                'featured' => $wallpaper->featured,
            ];
        });


        return view('static_wallpapers', [
            'data' => $data,
            'categories' => $categories,
            'selectedCategoryId' => $selectedCategoryId
        ]);
    }
    public function updateShow(Request $request)
    {
        try {
            $validated = $request->validate([
                'id' => 'required|exists:static_wallpapers,id',
                'show' => 'required|boolean',
            ]);

            $wallpaper = StaticWallpaper::findOrFail($validated['id']);
            $wallpaper->wp_show = $validated['show'];
            $wallpaper->save();

            return response()->json(['success' => true, 'message' => 'Show status updated successfully.']);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'success' => false,
                'errors' => $e->errors()
            ], 422);
        }
    }

    public function updateFeatured(Request $request)
    {
        try {
            $validated = $request->validate([
                'id' => 'required|exists:static_wallpapers,id',
                'featured' => 'required|boolean',
            ]);

            $wallpaper = StaticWallpaper::findOrFail($validated['id']);
            $wallpaper->featured = $validated['featured'];
            $wallpaper->save();

            return response()->json(['success' => true, 'message' => 'featured status updated successfully.']);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'success' => false,
                'errors' => $e->errors()
            ], 422);
        }
    }
    public function delete($id)
    {
        $category = StaticWallpaper::findOrFail($id);
        $category->delete();
        return response()->json(['success' => true, 'message' => 'Deleted successfully.']);
    }
    public function edit($id)
    {
        $data = StaticWallpaper::findOrFail($id);
        $categories = ModelsCategories::where('type', '1')->get();

        return view('edit_wallpaper', [
            'data' => $data,
            'categories' => $categories,
            'wallpaper_type'=>'static'
        ]);
    }
    public function create()
    {
        $categories = ModelsCategories::where('type', '1')->get();

        return view('create_wallpaper', [
            'categories' => $categories,
            'wallpaper_type'=> 'static'
        ]);
    }
}
