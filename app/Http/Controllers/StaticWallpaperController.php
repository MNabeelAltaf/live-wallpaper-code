<?php

namespace App\Http\Controllers;

use App\Models\{AdvanceOptions, Event, Categories};
use App\Models\Categories as ModelsCategories;
use App\Models\StaticWallpaper;
use Illuminate\Http\Request;

class StaticWallpaperController extends Controller
{
    public function index(Request $request)
    {
        $categories = ModelsCategories::where('type', '1')->get();

        // Get the selected category or default to the first category
        $selectedCategoryId = $request->query('category', $categories->first()->id);

        // Fetch wallpapers for the selected category
        $wallpapers = StaticWallpaper::where('cat_id', $selectedCategoryId)->get();

        // Format wallpaper data
        $data = $wallpapers->map(function ($wallpaper) {
            return [
                'id' => $wallpaper->id,
                'img_path' => $wallpaper->img_path,
                'thumb_path' => $wallpaper->thumb_path,
                'likes' => $wallpaper->likes,
                'downloads' => $wallpaper->downloads,
                'hash_tags' => $wallpaper->hash_tags,
                'wp_show' => $wallpaper->wp_show,
                'featured' => $wallpaper->featured,
            ];
        });


        return view('static_wallpapers', [
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

            $wallpaper = StaticWallpaper::findOrFail($validated['id']);
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

            $wallpaper = StaticWallpaper::findOrFail($validated['id']);
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
    public function delete($id)
    {
        $category = StaticWallpaper::findOrFail($id);
        $category->delete();
        return response()->json(['success' => true, 'message' => 'Deleted successfully.']);
    }
    public function edit($id)
    {
        $data = StaticWallpaper::findOrFail($id);
        $categories = ModelsCategories::where('type', '1')->get();

        return view('edit_wallpaper', [
            'data' => $data,
            'categories' => $categories,
            'wallpaper_type' => 'static'
        ]);
    }
    public function create()
    {
        $categories = ModelsCategories::where('type', '1')->get();

        return view('create_wallpaper', [
            'categories' => $categories,
            'wallpaper_type' => 'static'
        ]);
    }




    public function advanceOptions(Request $request)
    {

        $static_advance_options = AdvanceOptions::where('wallpaper_type', 'static')->first();


        if ($static_advance_options) {
            $static_advance_options = json_decode($static_advance_options->options, true);
        } else {
            $static_advance_options = null;
        }

        // get events
        $categories = Categories::where('type', 1)->get();
        $data = Event::all()->map(function ($event) {
            return [
                'id' => $event->id,
                'name' => $event->name,
                'start_date' => \Carbon\Carbon::parse($event->start_date)->format('M d'),
                'end_date' => \Carbon\Carbon::parse($event->end_date)->format('M d'),
            ];
        });

        return view('advanceOptions.index', [
            'static_advance_options' => $static_advance_options,
            'data' => $data,
            'categories' => $categories,
        ]);
    }

    public function advanceOptionsOrders(Request $request)
    {
        $static_advance_orders =  AdvanceOptions::where('wallpaper_type', 'static')->first();;

        if ($static_advance_orders) {
            $static_advance_orders = json_decode($static_advance_orders, true);
        }

        return response()->json(['success' => true, 'order' => $static_advance_orders]);
    }



    public function advanceOptionsData(Request $request)
    {

        $wallpaper_type  = 'static';

        $advance_options = [];

        $category_visibility = $request->category_visibility == 'on' ? 1 : 0;
        $events_visibility = $request->events_visibility == 'on' ? 1 : 0;
        $featured_visibility = $request->featured_visibility == 'on' ? 1 : 0;
        $trending_visibility = $request->trending_visibility == 'on' ? 1 : 0;
        $new_wlp_visibility = $request->new_wlp_visibility == 'on' ? 1 : 0;

        $new_wlp_days = $request->days;

        // order of divs
        $orders = $request->order ?? null;
        if ($orders != null) {
            $order_data = $this->settingDivOrder($orders);
            if ($order_data->wasRecentlyCreated || $order_data->wasChanged()) {
                return response()->json(['success' => true, 'message' => 'Order added/updated Successfully.', 'data' => $order_data]);
            } else {
                return response()->json(['success' => false, 'message' => 'Failed to add/update Order.']);
            }
        }



        if ($request->has('category_visibility')) {
            $advance_options['category_visibility'] = $category_visibility;
            $advance_options['option_1'] = $request->option_1;
            $advance_options['option_2'] = $request->option_2;
        }

        if ($request->has('events_visibility')) {
            $advance_options['events_visibility'] = $events_visibility;
        }

        if ($request->has('featured_visibility')) {
            $advance_options['featured_visibility'] = $featured_visibility;
        }

        if ($request->has('trending_visibility')) {
            $advance_options['trending_visibility'] = $trending_visibility;
            $advance_options['trending_option_1'] = $request->trending_option_1;;
            $advance_options['trending_option_2'] = $request->trending_option_2;
        }

        if ($request->has('new_wlp_visibility')) {
            $advance_options['new_wlp_visibility'] = $new_wlp_visibility;
            $advance_options['days'] = $new_wlp_days ?? 1;
        }



        // Update or create the advance options
        $static_options_data = AdvanceOptions::updateOrCreate(
            ['wallpaper_type' => $wallpaper_type],
            ['options' => json_encode(value: $advance_options)]
        );


        if ($static_options_data->wasRecentlyCreated || $static_options_data->wasChanged()) {
            return response()->json(['success' => true, 'message' => 'Advance Options added/updated Successfully.', 'data' => $advance_options]);
        } else {
            return response()->json(['success' => false, 'message' => 'Failed to add/update Advance Options.']);
        }
    }

    private function settingDivOrder($orders)
    {
        $wallpaper_type = 'static';

        $assignDivOrder = [
            'category-container' => 'category_order',
            'events-container' => 'events_order',
            'featured-container' => 'featured_order',
            'trending-container' => 'trending_order',
            'new-wlp-container' => 'new_wallpaper_order'
        ];


        $orderArray = [];
        foreach ($orders as $index => $id) {
            if (isset($assignDivOrder[$id])) {
                $orderArray[$assignDivOrder[$id]] = $index + 1;
            }
        }

        // Setting order of divs
        $orderList = [];
        if (isset($orderArray['category_order'])) {
            $orderList['category_order'] = $orderArray['category_order'];
        }
        if (isset($orderArray['events_order'])) {
            $orderList['events_order'] = $orderArray['events_order'];
        }
        if (isset($orderArray['featured_order'])) {
            $orderList['featured_order'] = $orderArray['featured_order'];
        }
        if (isset($orderArray['trending_order'])) {
            $orderList['trending_order'] = $orderArray['trending_order'];
        }
        if (isset($orderArray['new_wallpaper_order'])) {
            $orderList['new_wallpaper_order'] = $orderArray['new_wallpaper_order'];
        }

        $static_orders_data = AdvanceOptions::updateOrCreate(
            ['wallpaper_type' => $wallpaper_type],
            ['orders' => json_encode($orderList)]
        );

        return $static_orders_data;
    }
}
