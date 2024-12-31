<?php

namespace App\Http\Controllers\Api;

use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use App\Models\{
    event_category as event,
    Event as eventModal,
    Categories as ModelsCategories,
    StaticWallpaper,
    AdvanceOptions as static_custom_options
};
use Illuminate\Http\Request;

class StaticWallpaperController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $wallpaper_type = 'static';
        $advanceOptions = static_custom_options::where('wallpaper_type', $wallpaper_type)->first();

        $static_wallpapers = StaticWallpaper::with('category.events')->get()->map(function ($wallpaper) {
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


        $grouped_wallpapers = $static_wallpapers->groupBy('cat_name');


        $response = [];

        $item_wallpapers = $grouped_wallpapers->map(function ($wallpapers) {
            return $wallpapers->first();
        })->values()->all();

        $response[] = [
            'order' => '',
            'viewType' => '1',
            'wallpapers' => $item_wallpapers,
        ];



        // get featured wallpaper
        $featuredWallpaper = $this->getFeaturedWallpapers($advanceOptions);
        if ($featuredWallpaper->isNotEmpty()) {
            $response[] = [
                'order' => '1',
                'order_name' => 'featured_order',
                'viewType' => '2',
                'title' => 'Featured',
                'wallpapers' => $featuredWallpaper,
            ];
        }

        // get trending wallpaper (get wlp by most likes/downloads)
        $trendingWallpaper = $this->getTrendingWallpapers($advanceOptions);
        if ($trendingWallpaper->isNotEmpty()) {
            $response[] = [
                'order' => '2',
                'order_name' => 'trending_order',
                'viewType' => '3',
                'title' => 'Trending',
                'wallpapers' => $trendingWallpaper,
            ];
        }

        // get newly added wallpaper
        $newWallpaper = $this->getNewlyAddedWallpapers($advanceOptions);
        if ($newWallpaper->isNotEmpty()) {
            $response[] = [
                'order' => '3',
                'order_name' => 'new_wallpaper_order',
                'viewType' => '5',
                'title' => 'New',
                'wallpapers' => $newWallpaper,
            ];
        }


        // get events
        $eventsCategory = $this->getCategoryByEvents($advanceOptions);
        if ($eventsCategory->isNotEmpty()) {
            $response[] = [
                'order' => '4',
                'order_name' => 'events_order',
                'viewType' => '6',
                'title' => 'Events',
                'wallpapers' => $eventsCategory,
            ];
        }

        // get category
        $getCategories = $this->getCategories($advanceOptions);
        if ($getCategories->isNotEmpty()) {
            $response[] = [
                'order' => '5',
                'order_name' => 'category_order',
                'viewType' => '7',
                'title' => 'Categories',
                'wallpapers' => $getCategories,
            ];
        }


        $categories = ModelsCategories::all();

        foreach ($categories as $category) {
            $category_wallpapers = StaticWallpaper::whereHas('category', function ($query) use ($category) {
                $query->where('name', $category->name);
            })->get()->map(function ($wallpaper) use ($category) {
                return [
                    'id' => (string) $wallpaper->id,
                    'blurPath' => url(Storage::url($wallpaper->blur_path)),
                    'likes' => (string) $wallpaper->likes,
                    'downloads' => (string) $wallpaper->downloads,
                    'category' => $category->name,
                    'cat_id' => (string) $wallpaper->cat_id,
                    'tags' => $wallpaper->hash_tags,
                    'thumbPath' => url(Storage::url($wallpaper->thumb_path)),
                    'img_path' => url(Storage::url($wallpaper->img_path)),
                ];
            });


            $category_wallpapers = $category_wallpapers->shuffle();

            if ($category_wallpapers->isNotEmpty()) {
                $response[] = [
                    'order' => '6',
                    'viewType' => '4',
                    'wallpapers' => $category_wallpapers,
                ];
            }
        }

        $arrange_response = $this->setResponseOrder($advanceOptions, $response);

        return response()->json([
            'response' => $arrange_response,
        ]);
    }


    private function getFeaturedWallpapers($advanceOptions)
    {

        $options = json_decode($advanceOptions->options, true);

        if (isset($options['featured_visibility']) && $options['featured_visibility'] == 1) {
            $featured_wallpapers = StaticWallpaper::where('featured', 1)->get()->map(function ($wallpaper) {
                return [
                    'id' => (string) $wallpaper->id,
                    'blurPath' => url(Storage::url($wallpaper->blur_path)),
                    'likes' => (string) $wallpaper->likes,
                    'downloads' => (string) $wallpaper->downloads,
                    'thumbPath' => url(Storage::url($wallpaper->thumb_path)),
                    'img_path' => url(Storage::url($wallpaper->img_path)),
                ];
            });
            return $featured_wallpapers;
        } else {
            return collect([]);
        }
    }

    private function getTrendingWallpapers($advanceOptions)
    {

        $options = json_decode($advanceOptions->options, true);

        $trending_option_1 = $options['trending_option_1'] ?? 'likes'; // get wlp by downloads or likes
        $trending_option_2 = $options['trending_option_2'] ?? 'desc'; // get wlp in ascending or desc order


        if (isset($options['trending_visibility']) && $options['trending_visibility'] == 1) {
            $trending_wallpapers = StaticWallpaper::orderBy($trending_option_1, $trending_option_2)
                ->get()
                ->groupBy('cat_id')
                ->map(function ($group) use ($trending_option_1, $trending_option_2) {
                    return $trending_option_2 === 'asc' ? $group->sortBy($trending_option_1)->first() : $group->sortByDesc($trending_option_1)->first();
                })
                ->values()
                ->map(function ($wallpaper) {
                    return [
                        'id' => (string) $wallpaper->id,
                        'blurPath' => url(Storage::url($wallpaper->blur_path)),
                        'likes' => (string) $wallpaper->likes,
                        'downloads' => (string) $wallpaper->downloads,
                        'thumbPath' => url(Storage::url($wallpaper->thumb_path)),
                        'img_path' => url(Storage::url($wallpaper->img_path)),
                    ];
                });
            return $trending_wallpapers;
        } else {
            return collect([]);
        }
    }

    private function getNewlyAddedWallpapers($advanceOptions)
    {

        $options = json_decode($advanceOptions->options, true);

        $days = $options['days'] ?? 7;

        if (isset($options['new_wlp_visibility']) && $options['new_wlp_visibility'] == 1) {
            $new_wallpapers = StaticWallpaper::where('created_at', '>=', now()->subDays($days))
                ->get()
                ->map(function ($wallpaper) {
                    return [
                        'id' => (string) $wallpaper->id,
                        'blurPath' => url(Storage::url($wallpaper->blur_path)),
                        'likes' => (string) $wallpaper->likes,
                        'downloads' => (string) $wallpaper->downloads,
                        'thumbPath' => url(Storage::url($wallpaper->thumb_path)),
                        'img_path' => url(Storage::url($wallpaper->img_path)),
                    ];
                });
            return $new_wallpapers;
        } else {
            return collect([]);
        }
    }

    private function getCategoryByEvents($advanceOptions)
    {

        // getting events
        $options = json_decode($advanceOptions->options, true);

        if (isset($options['events_visibility']) && $options['events_visibility'] == 1) {

            $upcomingEvents = eventModal::where('start_date', '>=', now())
                ->where('start_date', '<=', now()->addDays(15))
                ->get();

            $events = ModelsCategories::whereHas('events', function ($query) use ($upcomingEvents) {
                $query->whereIn('events.id', $upcomingEvents->pluck('id'));
            })->get()->map(function ($category) {
                $category->thumbnail = url(Storage::url($category->thumbnail));
                return $category;
            });

            return $events;
        } else {
            return collect([]);
        }
    }


    private function getCategories($advanceOptions)
    {

        $options = json_decode($advanceOptions->options, true);

        $categories_option_1 = $options['option_1'] ?? 'downloads'; // get wlp by downloads by DEFAULT
        $categories_option_2 = $options['option_2'] ?? 'desc'; // get wlp in desc order by DEFAULT

        if (isset($options['category_visibility']) && $options['category_visibility'] == 1) {
            $wallpapers = StaticWallpaper::all();

            $groupedWallpapers = $wallpapers->groupBy('cat_id')->map(function ($group) use ($categories_option_1) {
                return [
                    'cat_id' => $group->first()->cat_id,
                    'total_value' => $group->sum($categories_option_1),
                ];
            });

            $sortedCategories = $categories_option_2 === 'asc'
                ? $groupedWallpapers->sortBy('total_value')
                : $groupedWallpapers->sortByDesc('total_value');

            $categories = $sortedCategories->values()->map(function ($item)  use ($categories_option_1) {
                $category = ModelsCategories::find($item['cat_id']);
                if ($category) {
                    return [
                        'id' => $category->id,
                        'name' => $category->name,
                        'thumbnail' => url(Storage::url($category->thumbnail)),
                        'sortBy' => $categories_option_1,
                        'total_' . $categories_option_1 => $item['total_value'],
                    ];
                }
                return null;
            })->filter()->values();

            return $categories;
        } else {
            return collect([]);
        }
    }


    private function setResponseOrder($advanceOptions, $response)
    {

        $orders = json_decode($advanceOptions->orders, true);


        foreach ($response as &$item) {
            if (isset($item['order_name']) && isset($orders[$item['order_name']])) {
                $item['order'] = $orders[$item['order_name']];
            }
        }

        $orderedItems = array_filter($response, function ($item) {
            return $item['order'] !== '';
        });

        usort($orderedItems, function ($a, $b) {
            return $a['order'] - $b['order'];
        });


        $unorderedItems = array_filter($response, function ($item) {
            return $item['order'] === '';
        });

        return array_merge($orderedItems, $unorderedItems);
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
        $single_cat_wlp = StaticWallpaper::where('cat_id', $id)->get()->map(function ($wallpaper) {
            return [
                'id' => (string) $wallpaper->id,
                'blurPath' => url(Storage::url($wallpaper->blur_path)),
                'asset_type' => 'O',
                'likes' => (string) $wallpaper->likes,
                'downloads' => (string) $wallpaper->Downloads,
                'thumbPath' => url(Storage::url($wallpaper->thumb_path)),
                'img_path' => url(Storage::url($wallpaper->img_path)),
            ];
        });

        return response()->json($single_cat_wlp);
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
