<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use App\Models\ThreeDWallpaper_Panel;


use Illuminate\Http\Request;

class AddWallpaperController extends Controller
{
    public function addWallpaper(Request $request)
    {
        // $validated = $request->validate([
        //     'category' => 'required|exists:categories,id',
        //     'zip' => 'required|mimes:zip|max:10240',
        //     'blur' => 'required|mimes:jpeg,jpg,png,gif,webp|max:2048',
        //     'thumbnail' => 'required|mimes:jpeg,jpg,png,gif,webp|max:2048',
        //     'tags' => 'required|string',
        //     'wallpaper_type' => 'required|string',
        // ]);


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
                return redirect()->route('3d_wallpapers.index')->with([
                    'success' => 'Wallpaper Added successfully!',
                ]);
            }
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


    // --------------------------------

    // Edit Wallpaper code
    public function editWallpaper(Request $request)
    {

        if ($request->wallpaper_type == '3d') {
            $isEdited = $this->edit_3d_wallpaper($request);

            if ($isEdited) {
                return redirect()->route('3d_wallpapers.index')->with([
                    'success' => 'Wallpaper Edit successfully!',
                ]);
            }
        }
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
}
