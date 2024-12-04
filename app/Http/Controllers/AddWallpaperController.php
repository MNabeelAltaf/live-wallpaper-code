<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use App\Models\LiveWallpapers_Panel;
use App\Models\StaticWallpaper;
use App\Models\ThreeDWallpaper_Panel;
use App\Models\Categories as ModelsCategories;


use Illuminate\Http\Request;

class AddWallpaperController extends Controller
{
    public function addWallpaper(Request $request)
    {

        if ($request->wallpaper_type == '3d') {

            $validated = $request->validate([
                'category' => 'required|exists:categories,id',
                'zip' => 'required|mimes:zip|max:10240',
                'blur' => 'required|mimes:jpeg,jpg,png,gif,webp|max:2048',
                'thumbnail' => 'required|mimes:jpeg,jpg,png,gif,webp|max:2048',
                'tags' => 'required|string',
                'wallpaper_type' => 'required|string',
            ]);


            $isAdded = $this->add_3d_wallpapers($request);

            if ($isAdded) {
                flash()->success('Wallpaper created successfully!');
                return redirect()->route('3d_wallpapers.index')->with([
                    'success' => 'Wallpaper Added successfully!',
                ]);
            }
        } elseif ($request->wallpaper_type == 'live') {

            $validated = $request->validate([
                'category_id' => 'required|exists:categories,id',
                'category_video' => 'required|mimes:mp4,mov|max:12048',
                'category_thumbnail' => 'required|mimes:jpeg,jpg,png,gif,webp|max:2048',
                'tags' => 'required|string',
                'wallpaper_type' => 'required|string',
            ]);

            $isAdded = $this->add_live_wallpapers($request);

            if ($isAdded) {

                flash()->success('Wallpaper created successfully!');

                return redirect()->route('live_wallpapers.index')->with([
                    'success' => 'Wallpaper Added successfully!',
                ]);
            }
        } elseif ($request->wallpaper_type == 'static') {
            $isAdded = $this->add_static_wallpapers($request);
            if ($isAdded) {
                return redirect()->back()->with([
                    'success' => 'Wallpaper Added successfully!',
                ]);
            }
        }
    }

    public function add_static_wallpapers(Request $request)
    {
        $show_wp = 1;
        $featured = 1;
        $hash_tags = $request->hash_tags;


        $cat_id = $request->cat_id;
        $cat_name = Categories::where('id', $cat_id)->value('name');


        $threeD_blur_folder = 'Static_Wallpapers/' . $cat_name . '/blur';
        $threeD_thumb_folder = 'Static_Wallpapers/' . $cat_name . '/thumb';
        $threeD_zip_folder = 'Static_Wallpapers/' . $cat_name . '/wallpaper';

        if ($request->hasFile('img_path')) {

            $zip_file = $request->file('img_path');
            $zipName =  $cat_name . '_' . uniqid() . '_' . $zip_file->getClientOriginalName();
            $img_path = $zip_file->storeAs($threeD_zip_folder, $zipName, 'public');
        }
        if ($request->hasFile('thumb_path')) {

            $thumb_file = $request->file('thumb_path');
            $thumbName =  $cat_name . '_' . uniqid() . '_' . $thumb_file->getClientOriginalName();
            $thumb_path = $thumb_file->storeAs($threeD_thumb_folder, $thumbName, 'public');
        }
        if ($request->hasFile('blur_path')) {

            $blur_file = $request->file('blur_path');
            $blurName =  $cat_name . '_' . uniqid() . '_' . $blur_file->getClientOriginalName();
            $blur_path = $blur_file->storeAs($threeD_blur_folder, $blurName, 'public');
        }
        $categoryTable = StaticWallpaper::create([
            'blur_path' => $blur_path,
            'thumb_path' => $thumb_path,
            'img_path' =>  $img_path,
            'category' => $cat_name,
            'cat_id' => $cat_id,
            'likes' => 0,
            'downloads' => 0,
            'set_wp' => 0,
            'unlike' => 0,
            'hash_tags' => $hash_tags,
            'wp_show' => $show_wp,
            'featured' =>  $featured,
        ]);


        if ($categoryTable) {
            return True;
        } else {
            return False;
        }
    }
    public function add_3d_wallpapers(Request $request)
    {

        $show_wp = $request->has('show') ? 1 : 0;
        $featured_wp = $request->has('featured') ? 1 : 0;
        $tags = $request->tags;


        $category_id = $request->category;
        $cat_name = Categories::where('id', $category_id)->value('name');


        $threeD_blur_folder = '3D_Wallpapers/' . $cat_name . '/blur';
        $threeD_thumb_folder = '3D_Wallpapers/' . $cat_name . '/thumb';
        $threeD_zip_folder = '3D_Wallpapers/' . $cat_name . '/zip';

        if ($request->hasFile('zip')) {

            $zip_file = $request->file('zip');
            $zipName =  $cat_name . '_' . uniqid() . '_' . $zip_file->getClientOriginalName();
            $zipPath = $zip_file->storeAs($threeD_zip_folder, $zipName, 'public');
        }
        if ($request->hasFile('thumbnail')) {

            $thumb_file = $request->file('thumbnail');
            $thumbName =  $cat_name . '_' . uniqid() . '_' . $thumb_file->getClientOriginalName();
            $thumbPath = $thumb_file->storeAs($threeD_thumb_folder, $thumbName, 'public');
        }
        if ($request->hasFile('blur')) {

            $blur_file = $request->file('blur');
            $blurName =  $cat_name . '_' . uniqid() . '_' . $blur_file->getClientOriginalName();
            $blurPath = $blur_file->storeAs($threeD_blur_folder, $blurName, 'public');
        }

        $categoryTable = ThreeDWallpaper_Panel::create([
            'blur_path' => $blurPath,
            'thumb_path' => $thumbPath,
            'zip_path' =>  $zipPath,
            'category' => $cat_name,
            'cat_id' => $category_id,
            'likes' => 0,
            'downloads' => 0,
            'set_wp' => 0,
            'hash_tags' => $tags,
            'wp_show' => $show_wp,
            'featured' =>  $featured_wp,
        ]);


        if ($categoryTable) {
            return True;
        } else {
            return False;
        }
    }

    public function add_live_wallpapers(Request $request)
    {


        $show_wp = $request->has('show') ? 1 : 0;
        $featured_wp = $request->has('featured') ? 1 : 0;
        $tags = $request->tags;


        $category_id = $request->category_id;
        $cat_name = Categories::where('id', $category_id)->value('name');


        $live_blur_folder = 'Live_Wallpapers/' . $cat_name . '/blur';

        $live_thumb_folder = 'Live_Wallpapers/' . $cat_name . '/thumb';
        $live_video_folder = 'Live_Wallpapers/' . $cat_name . '/video';

        if ($request->hasFile('category_video')) {

            $video_file = $request->file('category_video');
            $videoName =  $cat_name . '_' . uniqid() . '_' . $video_file->getClientOriginalName();
            $videoPath = $video_file->storeAs($live_video_folder, $videoName, 'public');
        }
        if ($request->hasFile('category_thumbnail')) {

            $thumb_file = $request->file('category_thumbnail');
            $thumbName =  $cat_name . '_' . uniqid() . '_' . $thumb_file->getClientOriginalName();
            $thumbPath = $thumb_file->storeAs($live_thumb_folder, $thumbName, 'public');
        }



        $categoryTable = LiveWallpapers_Panel::create([
            'video_path' => $videoPath,
            'thumb_path' => $thumbPath,
            'blur_path' => $live_blur_folder,
            'category' => $cat_name,
            'cat_id' => $category_id,
            'likes' => 0,
            'downloads' => 0,
            'set_wp' => 0,
            'hash_tags' => $tags,
            'wp_show' => $show_wp,
            'featured' =>  $featured_wp,
        ]);


        if ($categoryTable) {
            return True;
        } else {
            return False;
        }
    }

    // --------------------------------

    // Edit Wallpaper code
    public function editWallpaper(Request $request)
    {

        if ($request->wallpaper_type == '3d') {
            $isEdited = $this->edit_3d_wallpaper($request);

            if ($isEdited) {
                flash()->success('Wallpaper Edit successfully!');
                return redirect()->route('3d_wallpapers.index')->with([
                    'success' => 'Wallpaper Edit successfully!',
                ]);
            }
        } elseif ($request->wallpaper_type == 'live') {
            $isEdited = $this->edit_live_wallpaper($request);

            if ($isEdited) {
                flash()->success('Wallpaper Edit successfully!');
                return redirect()->route('live_wallpapers.index')->with([
                    'success' => 'Wallpaper Edit successfully!',
                ]);
            }
        }
        if ($request->wallpaper_type == 'static') {
            $isEdited = $this->edit_static_wallpaper($request);
            if ($isEdited) {
                return redirect()->route('wallpapers.index')->with([
                    'success' => 'Wallpaper Edit successfully!',
                ]);
            }
        }
    }


    public function edit_static_wallpaper($request)
    {
        // Validate the request
        $validated = $request->validate([
            'hash_tags' => 'required|string',
            'wallpaper_type' => 'required|string',
        ]);

        // Find the wallpaper record
        $wallpaper = StaticWallpaper::findOrFail($request->update_id);

        // Update category details
        $cat_id = $request->cat_id;
        $wallpaper->cat_id = $cat_id;
        $cat_name = Categories::find($cat_id)->name;

        // Define folders
        $base_folder = 'Static_Wallpapers/' . $cat_name;
        $blur_folder = $base_folder . '/blur';
        $thumb_folder = $base_folder . '/thumb';
        $wallpaper_folder = $base_folder . '/wallpaper';

        // Handle img_path file upload
        if ($request->hasFile('img_path')) {
            $zip_file = $request->file('img_path');
            $zipName = $cat_name . '_' . uniqid() . '_' . $zip_file->getClientOriginalName();
            $img_path = $zip_file->storeAs($wallpaper_folder, $zipName, 'public');
            $wallpaper->img_path = $img_path;
        }

        // Handle thumb_path file upload
        if ($request->hasFile('thumb_path')) {
            $thumb_file = $request->file('thumb_path');
            $thumbName = $cat_name . '_' . uniqid() . '_' . $thumb_file->getClientOriginalName();
            $thumb_path = $thumb_file->storeAs($thumb_folder, $thumbName, 'public');
            $wallpaper->thumb_path = $thumb_path;
        }

        // Handle blur_path file upload
        if ($request->hasFile('blur_path')) {
            $blur_file = $request->file('blur_path');
            $blurName = $cat_name . '_' . uniqid() . '_' . $blur_file->getClientOriginalName();
            $blur_path = $blur_file->storeAs($blur_folder, $blurName, 'public');
            $wallpaper->blur_path = $blur_path; // Fixed the typo here
        }

        // Update other fields
        $wallpaper->hash_tags = $request->hash_tags;
        return $wallpaper->save()
            ? true
            : false;
    }


    public function edit_3d_wallpaper($request)
    {

        $validated = $request->validate([
            'zip' => 'mimes:zip|max:10240',
            'blur' => 'mimes:jpeg,jpg,png,gif,webp|max:2048',
            'thumbnail' => 'mimes:jpeg,jpg,png,gif,webp|max:2048',
            'tags' => 'required|string',
            'wallpaper_type' => 'required|string',
            'cat_id' => 'required',
        ]);


        $wallpaper = ThreeDWallpaper_Panel::findOrFail($request->cat_id);

        $cat_name = $request->category;

        // Define folder paths
        $threeD_blur_folder = '3D_Wallpapers/' . $cat_name . '/blur';
        $threeD_thumb_folder = '3D_Wallpapers/' . $cat_name . '/thumb';
        $threeD_zip_folder = '3D_Wallpapers/' . $cat_name . '/zip';

        // Handle file uploads
        if ($request->hasFile('zip')) {
            $zip_file = $request->file('zip');
            $zipName = $cat_name . '_' . uniqid() . '_' . $zip_file->getClientOriginalName();
            $zipPath = $zip_file->storeAs($threeD_zip_folder, $zipName, 'public');
        } else {
            $zipPath = $wallpaper->zip_path;
        }

        if ($request->hasFile('thumbnail')) {
            $thumb_file = $request->file('thumbnail');
            $thumbName = $cat_name . '_' . uniqid() . '_' . $thumb_file->getClientOriginalName();
            $thumbPath = $thumb_file->storeAs($threeD_thumb_folder, $thumbName, 'public');
        } else {
            $thumbPath = $wallpaper->thumb_path;
        }

        if ($request->hasFile('blur')) {
            $blur_file = $request->file('blur');
            $blurName = $cat_name . '_' . uniqid() . '_' . $blur_file->getClientOriginalName();
            $blurPath = $blur_file->storeAs($threeD_blur_folder, $blurName, 'public');
        } else {
            $blurPath = $wallpaper->blur_path;
        }

        $updated = $wallpaper->update([
            'blur_path' => $blurPath,
            'thumb_path' => $thumbPath,
            'zip_path' => $zipPath,
            'category' => $request->category,
            'hash_tags' => $request->tags,
            'wp_show' => $request->has('show') ? 1 : 0,
            'featured' => $request->has('featured') ? 1 : 0,
        ]);

        if ($updated) {
            return true;
        } else {
            return false;
        }
    }



    public function edit_live_wallpaper($request)
    {

        $validated = $request->validate([
            'category_id' => 'required',
            'video' => 'mimes:mp4,mov|max:12048',
            'thumbnail' => 'mimes:jpeg,jpg,png,gif,webp|max:2048',
            'tags' => 'required|string',
            'wallpaper_type' => 'required|string',
            'cat_id' => 'required',
        ]);



        $wallpaper = LiveWallpapers_Panel::findOrFail($request->cat_id);
        $category = ModelsCategories::where('id', $request->category_id)->first();

        $cat_name = $category->name;

        $old_category = $wallpaper->category;
        $new_category =  $category->name;

        // Define folder paths
        $live_blur_folder = 'Live_Wallpapers/' . $cat_name . '/blur';
        $live_thumb_folder = 'Live_Wallpapers/' . $cat_name . '/thumb';
        $live_video_folder = 'Live_Wallpapers/' . $cat_name . '/video';

        // Handle file uploads
        if ($request->hasFile('video')) {
            $video_file = $request->file('video');
            $videoName = $cat_name . '_' . uniqid() . '_' . $video_file->getClientOriginalName();
            $videoPath = $video_file->storeAs($live_video_folder, $videoName, 'public');
        } else {
            // if category channges
            if ($old_category != $new_category) {
                $oldPath = storage_path('app/public/' . $wallpaper->video_path);
                $newPath = $live_video_folder . '/' . basename($wallpaper->video_path);

                if (!file_exists(storage_path('app/public/' . $live_video_folder))) {
                    mkdir(storage_path('app/public/' . $live_video_folder), 0755, true);
                }
                if (file_exists($oldPath)) {
                    rename($oldPath, storage_path('app/public/' . $newPath));
                }
                $videoPath = $newPath;
            } else {
                // If category hasn't changed,
                $videoPath = $wallpaper->video_path;
            }
        }

        if ($request->hasFile('thumbnail')) {
            $thumb_file = $request->file('thumbnail');
            $thumbName = $cat_name . '_' . uniqid() . '_' . $thumb_file->getClientOriginalName();
            $thumbPath = $thumb_file->storeAs($live_thumb_folder, $thumbName, 'public');
        } else {
            // If category changed
            if ($old_category != $new_category) {
                $oldThumbPath = storage_path('app/public/' . $wallpaper->thumb_path);
                $newThumbPath = $live_thumb_folder . '/' . basename($wallpaper->thumb_path);
                if (!file_exists(storage_path('app/public/' . $live_thumb_folder))) {
                    mkdir(storage_path('app/public/' . $live_thumb_folder), 0755, true);
                }
                if (file_exists($oldThumbPath)) {
                    rename($oldThumbPath, storage_path('app/public/' . $newThumbPath));
                }
                $thumbPath = $newThumbPath;
            } else {
                // If category hasn't changed
                $thumbPath = $wallpaper->thumb_path;
            }
        }

        if ($request->hasFile('blur')) {
            $blur_file = $request->file('blur');
            $blurName = $cat_name . '_' . uniqid() . '_' . $blur_file->getClientOriginalName();
            $blurPath = $blur_file->storeAs($live_blur_folder, $blurName, 'public');
        } else {
            $blurPath = $wallpaper->blur_path;
        }

        $updated = $wallpaper->update([
            'blur_path' => $blurPath,
            'thumb_path' => $thumbPath,
            'video_path' => $videoPath,
            'cat_id' => $request->category_id,
            'category' => $cat_name,
            'hash_tags' => $request->tags,
        ]);

        if ($updated) {
            return true;
        } else {
            return false;
        }
    }
}
