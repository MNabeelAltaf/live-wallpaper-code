<?php

namespace App\Http\Controllers;

use App\Models\Categories as ModelsCategories;
use App\Models\FourDwallpaper;
use Illuminate\Http\Request;

class FourDWallpaperController extends Controller
{
    public function index(Request $request)
    {
        $categories = ModelsCategories::where('type', '1')->get();
        $selectedCategoryId = $request->query('category', $categories->first()->id);

        $wallpapers = FourDwallpaper::where('category_id', $selectedCategoryId)->get();

        $data = $wallpapers->map(function ($wallpaper) {
            return [
                'id' => $wallpaper->id,
                'thumbPath' => $wallpaper->thumbPath,
                'no_of_layers' => $wallpaper->no_of_layers,
                'likes' => $wallpaper->likes,
                'downloads' => $wallpaper->downloads,
                'effect' => $wallpaper->effect,
                'bg_zoom_speed' => $wallpaper->bg_zoom_speed,
                'bg_zoom_intensity' => $wallpaper->bg_zoom_intensity,
                'background_rotation_xaxis' => $wallpaper->background_rotation_xaxis,
                'background_rotation_yaxis' => $wallpaper->background_rotation_yaxis,
                'tags' => $wallpaper->tags,
                'wp_show' => $wallpaper->wp_show,
                'featured' => $wallpaper->featured,
            ];
        });

        // dd($data);
        return view('fourD_wallpapers', [
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

            $wallpaper = FourDwallpaper::findOrFail($validated['id']);
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

            $wallpaper = FourDwallpaper::findOrFail($validated['id']);
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
}
