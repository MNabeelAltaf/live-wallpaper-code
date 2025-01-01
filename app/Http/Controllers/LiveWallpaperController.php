<?php

namespace App\Http\Controllers;
use App\Models\LiveWallpapers_Panel as lwp_model;
use App\Models\Categories as ModelsCategories;
use Illuminate\Http\Request;

class LiveWallpaperController extends Controller
{
    public function index()
    {
        $categories = ModelsCategories::all();
        $lwp_wallpapers = lwp_model::with('category')->get();


        $data = $lwp_wallpapers->map(function ($wallpaper) {
            return [
                'id' => $wallpaper->id,
                'blur_path' => $wallpaper->blur_path,
                'thumb_path' => $wallpaper->thumb_path,
                'video_path' => $wallpaper->video_path,
                'category' => $wallpaper->category ? $wallpaper->category->name : '---',
                'cat_id' => $wallpaper->cat_id,
                'likes' => $wallpaper->likes,
                'downloads' => $wallpaper->downloads,
                'created_at' =>  \Carbon\Carbon::parse($wallpaper->created_at)->format('M d Y'),
                'hash_tags' => $wallpaper->hash_tags,
                'wp_show' => $wallpaper->wp_show,
                'featured' => $wallpaper->featured,
            ];
        });

        return view('live_wallpapers', [
            'categories' => $categories,
            'data' => $data
        ]);

    }

    public function create(Request $request)
    {
        $categories = ModelsCategories::all();

        return view('create_wallpaper', [
            'wallpaper_type' => 'live',
            'categories' => $categories,
        ]);
    }


    public function delete($id)
    {
        $category = lwp_model::findOrFail($id);
        $category->delete();
        return response()->json(['success' => true, 'message' => 'Deleted successfully.']);
    }

    public function edit($id)
    {


        $data = lwp_model::findOrFail($id);


        $categories = ModelsCategories::where('type', '1')->get();

        return view('edit_wallpaper', [
            'data' => $data,
            'categories' => $categories,
            'wallpaper_type' => 'live'
        ]);
    }


    public function showCategoryRecords(Request $request) {

        $records = lwp_model::where('cat_id', $request->category)->get();
        $categories = ModelsCategories::all();

        return view('live_wallpapers', [
            'categories' => $categories,
            'data' => $records
        ]);

    }

    public function updateFeatured(Request $request)
    {
        try {
            $validated = $request->validate([
                'id' => 'required|exists:live_wallpapers,id',
                'featured' => 'required|boolean',
            ]);

            $wallpaper = lwp_model::findOrFail($validated['id']);
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
    public function updateShow(Request $request)
    {
        try {
            $validated = $request->validate([
                'id' => 'required|exists:live_wallpapers,id',
                'show' => 'required|boolean',
            ]);

            $wallpaper = lwp_model::findOrFail($validated['id']);
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

}
