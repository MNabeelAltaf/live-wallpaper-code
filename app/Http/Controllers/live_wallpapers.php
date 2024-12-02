<?php

namespace App\Http\Controllers;

use App\Models\all_live_wallpapers;
use App\Models\thumb_live_wallpaper;

use Illuminate\Support\Facades\Storage;
use App\Models\event_category;

use Illuminate\Http\Request;

class live_wallpapers extends Controller
{
    /**
     * Display a listing of the resource.
     */

     // API Controller

     public function index()
    {

        $live_wallpapers = thumb_live_wallpaper::where('cat_show', 1)->orderBy('cat_order', 'asc')->get()->map(function ($live_wlp) {
            return [
                'id' => (string) $live_wlp->cat_id,
                'cat_name' =>  $live_wlp->Cat_name,
                'cat_show' => (string) $live_wlp->cat_show,
                'cat_order' =>  (string) $live_wlp->cat_order,
                'thumbPath' => url(Storage::url('Live_Wallpapers/' . $live_wlp->thumb_wp)),
            ];
        })->toArray();

        // making category to top
        $event_cat = event_category::all();
        $cat_id = $event_cat->pluck('live_wlp_category_id')->toArray();

        $matchingWallpapers = array_filter($live_wallpapers, function ($wallpaper) use ($cat_id) {
            return in_array((int)$wallpaper['id'], $cat_id);
        });
        usort($matchingWallpapers, function ($a, $b) use ($cat_id) {
            $indexA = array_search((int)$a['id'], $cat_id);
            $indexB = array_search((int)$b['id'], $cat_id);
            return $indexA - $indexB;
        });

        $nonMatchingWallpapers = array_filter($live_wallpapers, function ($wallpaper) use ($cat_id) {
            return !in_array((int)$wallpaper['id'], $cat_id);
        });

        $orderedWallpapers = array_merge($matchingWallpapers, $nonMatchingWallpapers);
        $live_wallpapers  =  $orderedWallpapers ;



        // all live wallpapers
        $all_live_wallpapers = all_live_wallpapers::where('wp_show', 1)->get()->map(function ($lwp) {

            if ($lwp->asset_type == 'N') {
                $new_thumb_path = $lwp->thumb_path;
                $new_img_path = $lwp->img_path;
            } else {
                $new_thumb_path = $lwp->thumb_path.'thu.webp';
                $new_img_path =  $lwp->img_path.'.'.$lwp->extension;
            }

            return [
                'id' => (string) $lwp->id,
                'blurPath' => url(Storage::url('Live_Wallpapers/' . $lwp->Category . '/blur/' . $lwp->blur_path)),
                'likes' => (string) $lwp->likes,
                'downloads' => (string) $lwp->Downloads,
                'category' => $lwp->Category,
                'cat_id' => (string) $lwp->cat_id,
              	'cat_name' => (string) $lwp->category_name,
                'tags' => $lwp->hash_tags,
                'thumbPath' => url(Storage::url('Live_Wallpapers/' . $lwp->Category . '/thumb/' . $new_thumb_path)),
                'img_path' => url(Storage::url('Live_Wallpapers/' . $lwp->Category . '/video/' . $new_img_path)),
                'username' => $lwp->username,
                'source' => $lwp->source
            ];
        })->toArray();


        $trending_lwp = [];
        $added_categories = [];

        shuffle($all_live_wallpapers);

        foreach ($all_live_wallpapers as $lwp) {

            if (!in_array ($lwp['category'] , $added_categories )) {
                $added_categories[] = $lwp['category'];
                $trending_lwp[] = $lwp;
            }

            if (count($trending_lwp) >= 3) {
                break;
            }
        }


        $response = [
            [
                "category" => " Category",
                "viewType" => "1",
                'wallpapers' => $live_wallpapers
            ],
            [
                "viewType" => "4",
                "category" => "Trending",
                'wallpapers' => $trending_lwp
            ]
        ];


        $all_lwp = [];
        $all_lwp = $all_live_wallpapers;

        shuffle($all_lwp);

        $chunked_array = array_chunk($all_lwp, 3);

        foreach($chunked_array as $chunked_lwp)
        {
            $response[]=[
                "viewType"=> "4",
                "wallpapers"=>$chunked_lwp
            ];
        }



        return response()->json(['response' => $response]);
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
