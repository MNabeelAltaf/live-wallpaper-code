<?php

namespace App\Http\Controllers\api;

use App\Models\ThreeDWallpaper_Panel;
use App\Http\Controllers\Controller;
use App\Models\FourDwallpaper;
use App\Models\LiveWallpapers_Panel;
use App\Models\StaticWallpaper;
use Illuminate\Http\Request;

class DownloadsController extends Controller
{
    public function static_wallpaper(Request $request)
    {
        $id = $request->query('id');
        if (!$id) {
            return response()->json([
                'message' => 'Invalid parameters.',
                'status' => false,
            ], 400);
        }
        try {
            $wallpaper = StaticWallpaper::findOrFail($id);
            $wallpaper->increment('downloads');
            return response()->json([
                'message' => 'Image data updated.',
                'status' => true,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Image data not updated.',
                'status' => false,
                'error' => $e->getMessage(),
            ], 500);
        }
    }
    public function live_wallpaper(Request $request)
    {
        $id = $request->query('id');
        if (!$id) {
            return response()->json([
                'message' => 'Invalid parameters.',
                'status' => false,
            ], 400);
        }
        try {
            $wallpaper = LiveWallpapers_Panel::findOrFail($id);
            $wallpaper->increment('downloads');
            return response()->json([
                'message' => 'Image data updated.',
                'status' => true,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Image data not updated.',
                'status' => false,
                'error' => $e->getMessage(),
            ], 500);
        }
    }
    public function three_d_wallpaper(Request $request)
    {
        // Get query parameters
        $id = $request->query('id');
        $asset_type = $request->query('asset_type');

        // Validate input parameters
        if (!$id || !$asset_type) {
            return response()->json([
                'message' => 'Invalid parameters. "id" and "asset_type" are required.',
                'status' => false,
            ], 400);
        }

        try {
            // Increment downloads based on asset type
            if ($asset_type === '3D') {
                $wallpaper = ThreeDWallpaper_Panel::findOrFail($id);
                $wallpaper->increment('downloads');
            } elseif ($asset_type === '4D') {
                $wallpaper = FourDwallpaper::findOrFail($id);
                $wallpaper->increment('downloads');
            } else {
                return response()->json([
                    'message' => 'Invalid asset type. Accepted values are "3D" or "4D".',
                    'status' => false,
                ], 400);
            }

            return response()->json([
                'message' => 'Image data updated.',
                'status' => true,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Image data not updated.',
                'status' => false,
                'error' => $e->getMessage(),
            ], 500);
        }
    }
}
