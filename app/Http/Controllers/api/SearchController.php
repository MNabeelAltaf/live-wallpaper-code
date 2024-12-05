<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\LiveWallpapers_Panel;
use App\Models\StaticWallpaper;
use App\Models\ThreeDWallpaper_Panel;
use App\Models\FourDwallpaper;

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

        // Static wallpapers
        $wallpapers = StaticWallpaper::where('hash_tags', 'LIKE', '%' . $searchValue . '%')
            ->with('category')
            ->get()
            ->map(function ($wallpaper) use ($baseUrl) {
                return [
                    'id' => (string) $wallpaper->id,
                    'thumb_url' => $baseUrl . '/storage/' . $wallpaper->thumb_path,
                    'blurPath' => $baseUrl . '/storage/' . $wallpaper->blur_path,
                    'img_url' => $baseUrl . '/storage/' . $wallpaper->img_path,
                    'likes' => (string) $wallpaper->likes,
                    'Downloads' => (string) $wallpaper->downloads,
                    'category' => $wallpaper->category ? $wallpaper->category->name : null,
                ];
            });

        // Live wallpapers
        $live_wallpapers = LiveWallpapers_Panel::where('hash_tags', 'LIKE', '%' . $searchValue . '%')
            ->with('category')
            ->get()
            ->map(function ($wallpaper) use ($baseUrl) {
                return [
                    'id' => (string) $wallpaper->id,
                    'thumb_url' => $baseUrl . '/storage/' . $wallpaper->thumb_path,
                    'blurPath' => $baseUrl . '/storage/' . $wallpaper->blur_path,
                    'img_url' => $baseUrl . '/storage/' . $wallpaper->video_path,
                    'likes' => (string) $wallpaper->likes,
                    'Downloads' => (string) $wallpaper->downloads,
                    'Category' => $wallpaper->category ? $wallpaper->category->name : null,
                ];
            });

        // 3D wallpapers
        $three_d_wallpapers = ThreeDWallpaper_Panel::where('hash_tags', 'LIKE', '%' . $searchValue . '%')
            ->with('category')
            ->get()
            ->map(function ($three_d_wallpaper) use ($baseUrl) {
                return [
                    'id' => (string) $three_d_wallpaper->id,
                    'asset' => '3D',
                    'thumb_url' => $baseUrl . '/storage/' . $three_d_wallpaper->thumb_path,
                    'blurPath' => $baseUrl . '/storage/' . $three_d_wallpaper->blur_path,
                    'zip' => $baseUrl . '/storage/' . $three_d_wallpaper->zip_path,
                    'likes' => (string) $three_d_wallpaper->likes,
                    'Downloads' => (string) $three_d_wallpaper->downloads,
                    'Category' => $three_d_wallpaper->category ? $three_d_wallpaper->category->name : null,
                    'size' => number_format(filesize(public_path('storage/' . $three_d_wallpaper->zip_path)) / 1048576, 2),
                ];
            });

        // 4D wallpapers
        $four_d_wallpapers = FourDwallpaper::where('tags', 'LIKE', '%' . $searchValue . '%')
            ->with('category')
            ->get()
            ->map(function ($four_d_wallpaper) use ($baseUrl) {
                return [
                    'id' => (string) $four_d_wallpaper->id,
                    'asset' => '4D',
                    'uni' => $four_d_wallpaper->uni ?? 'N/A',
                    'category_name' => $four_d_wallpaper->category ? $four_d_wallpaper->category->name : 'Uncategorized',
                    'likes' => (string) $four_d_wallpaper->likes,
                    'no_of_layers' => (string) $four_d_wallpaper->no_of_layers,
                    'thumb_url' => $baseUrl . '/storage/' . $four_d_wallpaper->thumbPath,
                    'Downloads' => (string) $four_d_wallpaper->downloads,
                    'settings' => [
                        [
                            '_4d_effect' => $four_d_wallpaper->effect,
                        ],
                        [
                            'bg_zoom_speed' => $four_d_wallpaper->bg_zoom_speed,
                        ],
                        [
                            'bg_zoom_intensity' => $four_d_wallpaper->bg_zoom_intensity,
                        ],
                        [
                            'background_rotation_xaxis' => $four_d_wallpaper->background_rotation_xaxis,
                        ],
                        [
                            'background_rotation_yaxis' => $four_d_wallpaper->background_rotation_yaxis,
                        ]
                    ],
                ];
            });
        $combined_wallpapers = $three_d_wallpapers->merge($four_d_wallpapers)->shuffle();
        $response = [
            [
                'name' => 'live',
                'layout' => 3,
                'data' => $live_wallpapers->toArray(),
            ],
            [
                'name' => 'static',
                'layout' => 2,
                'data' => $wallpapers->toArray(),
            ],
            [
                'name' => '3D',
                'layout' => 4,
                'data' => $combined_wallpapers->toArray(),
            ],
        ];

        return response()->json($response, 200, [], JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT);
    }
}
