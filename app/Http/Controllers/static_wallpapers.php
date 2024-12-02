<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Storage;

use App\Models\add_static_wallpaper;
use App\Models\static_wallpaper;
use App\Models\event_category;
use Illuminate\Http\Request;



class static_wallpapers extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // top slider wallpapers
        $static_wallpapers = static_wallpaper::where('cat_show', 1)->get()->map(function ($wallpaper) {
            return [
                'id' => (string) $wallpaper->id,
                'cat_order' => (string) $wallpaper->cat_order,
                'cat_name' => $wallpaper->cat_name,
                'thumbPath' =>  url(Storage::url('Static_Wallpapers/' . $wallpaper->thumb_wp)),
            ];
        })->toArray();



        $event_cat = event_category::all();
        $cat_id = $event_cat->pluck('category_id')->toArray();
        $matchingWallpapers = array_filter($static_wallpapers, function ($wallpaper) use ($cat_id) {
            return in_array((int)$wallpaper['id'], $cat_id);
        });
        usort($matchingWallpapers, function ($a, $b) use ($cat_id) {
            $indexA = array_search((int)$a['id'], $cat_id);
            $indexB = array_search((int)$b['id'], $cat_id);
            return $indexA - $indexB;
        });

        $nonMatchingWallpapers = array_filter($static_wallpapers, function ($wallpaper) use ($cat_id) {
            return !in_array((int)$wallpaper['id'], $cat_id);
        });

        $orderedWallpapers = array_merge($matchingWallpapers, $nonMatchingWallpapers);
        $static_wallpapers  =  $orderedWallpapers ;

        // shuffle($static_wallpapers);


        // all wlps
        $wallpaper_details = add_static_wallpaper::where('wp_show', 1)->where('is_approved', 'Y')->where('wp_show', 1)->get()->map(function ($wlp_detail) {
            $thumb_path = $wlp_detail->thumb_path;
            $last_dot_position = strrpos($thumb_path, ".");
            $file_name_without_extension = substr($thumb_path, 0, $last_dot_position);
            $file_extension = substr($thumb_path, $last_dot_position);

            if ($wlp_detail->asset_type == 'N') {
                $new_thumb_path = $thumb_path;
            } else {
                if (strpos($thumb_path, 'thu') !== false) {
                    $new_thumb_path = $file_name_without_extension . $file_extension;
                } else {
                    $new_thumb_path = $file_name_without_extension . 'thu' . $file_extension;
                }
            }

            return [
                'id' => (string) $wlp_detail->id,
                'blurPath' => url(Storage::url('Static_Wallpapers/' . $wlp_detail->Category . '/blur/' . $wlp_detail->blur_path)),
                'likes' => (string) $wlp_detail->likes,
                'downloads' => (string) $wlp_detail->Downloads,
                'category' => $wlp_detail->Category,
                'cat_id' => (string) $wlp_detail->cat_id,
                'tags' => $wlp_detail->hash_tags,
                'thumbPath' => url(Storage::url('Static_Wallpapers/' . $wlp_detail->Category . '/thumb/' . $new_thumb_path)),
                'img_path' => url(Storage::url('Static_Wallpapers/' . $wlp_detail->Category . '/wallpaper/' . $wlp_detail->img_path)),
                'username' => $wlp_detail->username,
                'source' => $wlp_detail->source
            ];
        })->toArray();



        // trending wlp array
        shuffle($wallpaper_details);
        $trending = [];
        $added_categories = [];
        foreach ($wallpaper_details as $wallpaper) {
            if (!in_array($wallpaper['category'], $added_categories)) {
                $trending[] = $wallpaper;
                $added_categories[] = $wallpaper['category'];
            }

            if (count($trending) >= 3) {
                break;
            }
        }

        shuffle($trending);

        // all (body) wlps
        $all_wlps = [];
        foreach ($wallpaper_details as $all_wlps) {

            $all_wlps = $wallpaper_details;
        }
        shuffle($all_wlps);



        $all_wlps = $wallpaper_details;
        shuffle($all_wlps);

        $chunked_wallpapers = array_chunk($all_wlps, 3);



        $response = [
            [
                'category' => 'Category',
                'viewType' => '1',
                'wallpapers' => $static_wallpapers,
            ],
            [
                'category' => 'Trending',
                'viewType' => '4',
                'wallpapers' => $trending,
            ],
        ];


        foreach ($chunked_wallpapers as $chunk) {
            $response[] = [
                'viewType' => '4',
                'wallpapers' => $chunk,
            ];
        }


        return response()->json(['response' => $response], 200);


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
