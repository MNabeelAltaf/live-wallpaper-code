<?php

namespace App\Http\Controllers\api;

use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\{
    ThreeDWallpaper_Panel as threeD_table,
    FourDwallpaper as fourD_table,
    Categories as ModelsCategories,
};

class threeD_fourD_wallpaper extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $baseUrl = url('/');
        // category wlp
        $category_wallpapers = threeD_table::with('category.events')->get()->map(function ($wallpaper) {
            $category = $wallpaper->category;

            return [
                'id' => (string) $wallpaper->id,
                'cat_id' => (string) $wallpaper->cat_id,
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

        $grouped_wallpapers = $category_wallpapers->groupBy('cat_name');

        $response = [];

        $item_wallpapers = $grouped_wallpapers->map(function ($wallpapers) {
            return $wallpapers->first();
        })->values()->all();

        $response[] = [
            "viewType" => "1",
            "category" => "Categories",
            'wallpapers' => $item_wallpapers,
        ];

        // ---------------------------------------------------

        // featured wallpaper

        $three_d_featured_wlp = $this->get_threeD_featured_wlp();

        $four_d_featured_wlp = $this->get_fourD_featured_wlp();

        $trending_wlp = $three_d_featured_wlp->merge($four_d_featured_wlp);

        $response[] = [
            "viewType" => "3",
            "category" => "Featured",
            "wallpapers" => $trending_wlp,
        ];


        // trending wallpaper
        $three_d_wlp = $this->get_3d_wlp();
        $four_d_wlp = $this->get_4d_wlp();


        $three_four_d_wlp = $three_d_wlp->merge($four_d_wlp)->shuffle()->take(3);

        $response[] = [
            "viewType" => "4",
            "category" => "Trending",
            "wallpapers" => $three_four_d_wlp,
        ];

        $all_three_four_d_wlp = $three_d_wlp->merge($four_d_wlp)->shuffle();


        foreach ($all_three_four_d_wlp as $wallpaper) {

            $response[] = [
                "viewType" => "4",
                "wallpapers" => [
                    [
                        "id" => (string)$wallpaper['id'],
                        "asset" => $wallpaper['asset'] ?? '',
                        "category_name" => $wallpaper['category_name'] ?? '',
                        "blurPath" => $wallpaper['blurPath'] ?? '',
                        "zip" => $wallpaper['zip'] ?? '',
                        "thumbPath" => $wallpaper['thumbPath'] ?? '',
                        "downloads" => (string)$wallpaper['downloads'],
                        "likes" => (string)$wallpaper['likes'],
                    ]
                ],
            ];
        }


        return response()->json([
            'response' => $response

        ]);
    }

    public function get_threeD_featured_wlp()
    {

        $featured_wallpapers = threeD_table::with('category.events')->where('featured', 1)->get()->map(function ($wallpaper) {
            return [
                'id' => (string) $wallpaper->id,
                'asset' => '3D',
                'category_name' => $wallpaper->category->name,
                'blurPath' => url(Storage::url($wallpaper->blur_path)),
                'zip' => url(Storage::url($wallpaper->zip_path)),
                'thumbPath' => url(Storage::url($wallpaper->thumb_path)),
                'downloads' => (string) $wallpaper->downloads,
                'likes' => (string) $wallpaper->likes,
            ];
        });

        return   $featured_wallpapers;
    }

    public function get_fourD_featured_wlp()
    {

        $featured_wallpapers = fourD_table::with(['category.events', 'images', 'masks'])->where('featured', 1)->get()->map(function ($wallpaper) {
            return [
                'id' => (string) $wallpaper->id,
                'asset' => '4D',
                'category_name' => $wallpaper->category->name ?? '',
                'no_of_layers' => (string)  $wallpaper->no_of_layers,
                'downloads' => (string) $wallpaper->downloads,
                'thumbPath' => url(Storage::url($wallpaper->thumbPath)),
                'likes' => (string) $wallpaper->likes,
                'settings' => [
                    ['_4d_effect' => (string) $wallpaper->effect],
                    ['bg_zoom_speed' => (string) $wallpaper->bg_zoom_speed],
                    ['bg_zoom_intensity' => (string) $wallpaper->bg_zoom_intensity],
                    ['background_rotation_xaxis' =>  (string) $wallpaper->background_rotation_xaxis],
                    ['background_rotation_yaxis' => (string) $wallpaper->background_rotation_yaxis],
                ],
                'wallpaper_images' => $wallpaper->images->map(function ($image) {
                    return url(Storage::url($image->img_path));
                })->toArray(),
                'wallpaper_masks' => $wallpaper->masks->map(function ($masks) {
                    return url(Storage::url($masks->mask_path));
                })->toArray(),


            ];
        });

        return   $featured_wallpapers;
    }

    public function get_3d_wlp()
    {

        $featured_wallpapers = threeD_table::with('category.events')->get()->map(function ($wallpaper) {
            return [
                'id' => (string) $wallpaper->id,
                'asset' => '3D',
                'category_name' => $wallpaper->category->name,
                'blurPath' => url(Storage::url($wallpaper->blur_path)),
                'zip' => url(Storage::url($wallpaper->zip_path)),
                'thumbPath' => url(Storage::url($wallpaper->thumb_path)),
                'downloads' => $wallpaper->downloads,
                'likes' => $wallpaper->likes,
            ];
        });

        return   $featured_wallpapers;
    }


    public function get_4d_wlp()
    {
        $featured_wallpapers = fourD_table::with(['category.events', 'images', 'masks'])->get()->map(function ($wallpaper) {
            return [
                'id' => (string) $wallpaper->id,
                'asset' => '4D',
                'category_name' => $wallpaper->category->name ?? '',
                'no_of_layers' => (string)  $wallpaper->no_of_layers,
                'downloads' => (string) $wallpaper->downloads,
                'thumbPath' => url(Storage::url($wallpaper->thumbPath)),
                'likes' => (string) $wallpaper->likes,
                'settings' => [
                    ['_4d_effect' => (string) $wallpaper->effect],
                    ['bg_zoom_speed' => (string) $wallpaper->bg_zoom_speed],
                    ['bg_zoom_intensity' => (string) $wallpaper->bg_zoom_intensity],
                    ['background_rotation_xaxis' =>  (string) $wallpaper->background_rotation_xaxis],
                    ['background_rotation_yaxis' => (string) $wallpaper->background_rotation_yaxis],
                ],
                'wallpaper_images' => $wallpaper->images->map(function ($image) {
                    return url(Storage::url($image->img_path));
                })->toArray(),
                'wallpaper_masks' => $wallpaper->masks->map(function ($masks) {
                    return url(Storage::url($masks->mask_path));
                })->toArray(),

            ];
        });

        return   $featured_wallpapers;
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
