<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\LiveWallpapers_Panel;
use App\Models\StaticWallpaper;
use App\Models\ThreeDWallpaper_Panel;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function static_wallpaper(Request $request)
    {
        $searchValue = $request->query('search');
        if (!$searchValue) {
            return response()->json([
                'message' => 'Search value is required.',
                'status' => false,
            ], 400);
        }
        $baseUrl = url('/');
        $wallpapers = StaticWallpaper::where('hash_tags', 'LIKE', '%' . $searchValue . '%')
            ->with('category')
            ->get()
            ->map(function ($wallpaper) use ($baseUrl) {
                $wallpaper->img_path = $baseUrl . '/storage/' . $wallpaper->img_path;
                $wallpaper->thumb_path = $baseUrl . '/storage/' . $wallpaper->thumb_path;

                if (!empty($wallpaper->blur_path)) {
                    $wallpaper->blur_path = $baseUrl . '/storage/' . $wallpaper->blur_path;
                }
                if ($wallpaper->category) {
                    $wallpaper->category = $wallpaper->category->name; // Get category name only
                } else {
                    $wallpaper->category = null;
                }
                unset($wallpaper->cat_id);
                unset($wallpaper->created_at, $wallpaper->updated_at);
                $wallpaper->Category = $wallpaper->category;
                unset($wallpaper->category);
                return $wallpaper;
            });


        if ($wallpapers->isEmpty()) {
            return response()->json([
                'message' => 'No Search Found.',
                'status' => false,
            ]);
        }

        return response()->json($wallpapers, 200, [], JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT);
    }

    public function three_d_wallpaper(Request $request)
    {
        $searchValue = $request->query('search');
        if (!$searchValue) {
            return response()->json([
                'message' => 'Search value is required.',
                'status' => false,
            ], 400);
        }
        $baseUrl = url('/');
        $wallpapers = ThreeDWallpaper_Panel::where('hash_tags', 'LIKE', '%' . $searchValue . '%')
            ->get()
            ->map(function ($wallpaper) use ($baseUrl) {
                $wallpaper->zip = $baseUrl . '/storage/' . $wallpaper->zip_path;
                $wallpaper->thumb_path = $baseUrl . '/storage/' . $wallpaper->thumb_path;
                if (!empty($wallpaper->blur_path)) {
                    $wallpaper->blur_path = $baseUrl . '/storage/' . $wallpaper->blur_path;
                }
                $zipFilePath = public_path('storage/' . $wallpaper->zip_path);
                if (file_exists($zipFilePath)) {
                    $wallpaper->size = number_format(filesize($zipFilePath) / 1048576, 2).'M';
                } else {
                    $wallpaper->size = 0; // If file doesn't exist, set size to 0
                }
                unset($wallpaper->zip_path, $wallpaper->category, $wallpaper->cat_id, $wallpaper->created_at, $wallpaper->updated_at, $wallpaper->Category);
                return $wallpaper;
            });
        if ($wallpapers->isEmpty()) {
            return response()->json([
                'message' => 'No Search Found.',
                'status' => false,
            ]);
        }

        return response()->json($wallpapers, 200, [], JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT);
    }
}
