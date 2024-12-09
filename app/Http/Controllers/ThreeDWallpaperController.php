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

        $wallpapers = threeD_table::with('category')->get();

        $data = $wallpapers->map(function ($wallpaper) {
            return [
                'id' => $wallpaper->id,
                'thumb_path' => $wallpaper->thumb_path,
                'category' => $wallpaper->category->name,
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


    public function edit($id)
    {
        $data = threeD_table::findOrFail($id);
        $categories = ModelsCategories::where('type', '1')->get();

        return view('edit_wallpaper', [
            'data' => $data,
            'categories' => $categories,
            'wallpaper_type' => '3d'
        ]);
    }

    public function updateShow(Request $request)
    {
        try {
            $validated = $request->validate([
                'id' => 'required|exists:3d_wallpapers,id',
                'show' => 'required|boolean',
            ]);

            $three_d_wallpaper = threeD_table::findOrFail($validated['id']);
            $three_d_wallpaper->wp_show = $validated['show'];
            $three_d_wallpaper->save();

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
                'id' => 'required|exists:3d_wallpapers,id',
                'featured' => 'required|boolean',
            ]);

            $three_d_wallpaper = threeD_table::findOrFail($validated['id']);
            $three_d_wallpaper->featured = $validated['featured'];
            $three_d_wallpaper->save();

            return response()->json(['success' => true, 'message' => 'featured status updated successfully.']);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'success' => false,
                'errors' => $e->errors()
            ], 422);
        }
    }


    public function showCategoryRecords(Request $request) {

        $records = threeD_table::where('cat_id', $request->category)->get();
        $categories = ModelsCategories::all();

        return view('threeD_wallpapers', [
            'categories' => $categories,
            'data' => $records
        ]);

    }
}
