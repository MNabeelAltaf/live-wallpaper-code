<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;

use Carbon\Carbon;

use Illuminate\Http\Request;

use App\Models\{
    Categories,
    event_category,
    StaticWallpaper,
    LiveWallpapers_Panel,
    ThreeDWallpaper_Panel,
    FourDwallpaper,
    Event,
};



class DashboardController extends Controller
{
    public function index(Request $request)
    {
        $categoriesCount = Categories::count();

        $wallpapersCount = StaticWallpaper::count();
        $staticWallpapersLastModified = StaticWallpaper::max('updated_at');
        $staticWallpapersLastModifiedDate = $staticWallpapersLastModified
            ? Carbon::parse($staticWallpapersLastModified)->toDateString()
            : '---';

        $liveWallpapersCount = LiveWallpapers_Panel::count();
        $liveWallpapersLastModified = StaticWallpaper::max('updated_at');
        $liveWallpapersLastModifiedDate = $liveWallpapersLastModified
            ? Carbon::parse($liveWallpapersLastModified)->toDateString()
            : '---';

        $eventsCount = event_category::count();
        $threeDWallpapersCount = ThreeDWallpaper_Panel::count();
        $threeDWallpaperLastModification = ThreeDWallpaper_Panel::max('updated_at');
        $threeDWallpaperLastModificationDate = $threeDWallpaperLastModification ? Carbon::parse($threeDWallpaperLastModification)->toDateString() : '---';

        $fourDWallpapersCount = FourDwallpaper::count();
        $fourDWallpaperLastModification = FourDwallpaper::max('updated_at');
        $fourDWallpaperLastModificationDate = $fourDWallpaperLastModification ? Carbon::parse($fourDWallpaperLastModification)->toDateString() : '---';

        $events_days = $this->get_events_days();

        $most_liked_download_wallpaper = $this->get_most_liked_download_wallpaper();

        $data = [
            'categories' => $categoriesCount,
            'wallpapers' => $wallpapersCount,
            'liveWallpapers' => $liveWallpapersCount,
            'events' => $eventsCount,
            'threeDWallpapers' => $threeDWallpapersCount,
            'fourDWallpapers' => $fourDWallpapersCount,
            'staticWallpapersLastModified' => $staticWallpapersLastModifiedDate,
            'liveWallpapersLastModifiedDate' => $liveWallpapersLastModifiedDate,
            'threeDWallpaperLastModificationDate' => $threeDWallpaperLastModificationDate,
            'fourDWallpaperLastModification' => $fourDWallpaperLastModificationDate,
            'events_days' => $events_days,
            'most_liked_download_wallpaper'=>$most_liked_download_wallpaper,
        ];


        return view('dashboard', compact('data'));
    }

    public function get_events_days()
    {

        $event_data = Event::get();
        $now = Carbon::now();

        $eventsDays = [];

        foreach ($event_data as $event) {
            $event_start = Carbon::parse($event->start_date);

            // days left
            $left_days = $now->diffInDays($event_start);


            $eventsDays[] = [
                'event_name' => $event->name,
                'left_days' => (int) $left_days
            ];
        }

        return $eventsDays;
    }

    public function  get_most_liked_download_wallpaper()
    {
        return once(function () {

            $allCategories = Categories::with(['wallpapers', 'liveWallpapers', 'threeDWallpapers', 'fourDWallpapers'])->get();
            $likes = [];
            $wallpaperRelations = ['wallpapers', 'liveWallpapers', 'threeDWallpapers', 'fourDWallpapers'];
            foreach ($allCategories as $category) {
                foreach ($wallpaperRelations as $relation) {
                    foreach ($category->$relation as $wallpaper) {
                        $likes[] = [
                            'wallpaper_id' => $wallpaper->id,
                            'thumbnail' => $wallpaper->thumb_path ? $wallpaper->thumb_path :  $wallpaper->thumbPath,
                            'likes' => $wallpaper->likes,
                            'downloads' => $wallpaper->downloads
                        ];
                    }
                }
            }

            $maxLikes = collect($likes)->max('likes');
            $maxDownloads = collect($likes)->max('downloads');
            $maxLikesWallpaper = collect($likes)->firstWhere('likes', $maxLikes);
            $maxDownloadsWallpaper = collect($likes)->firstWhere('downloads', $maxDownloads);
            $allThumbnails = collect($likes)->pluck('thumbnail')->take(20)->shuffle();


            return [
                'max_likes' => $maxLikes,
                'max_likes_wallpaper' =>  url(Storage::url($maxLikesWallpaper['thumbnail'])),
                'max_downloads' => $maxDownloads,
                'max_downloads_wallpaper' => url(Storage::url($maxDownloadsWallpaper['thumbnail'])),
                'all_thumbnails'=>$allThumbnails
            ];
        });

    }
}
