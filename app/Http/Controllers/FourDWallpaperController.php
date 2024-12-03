<?php

namespace App\Http\Controllers;

use App\Models\Categories as ModelsCategories;
use App\Models\FourDImages;
use App\Models\FourDwallpaper;
use App\Models\Mask;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class FourDWallpaperController extends Controller
{
    public function index(Request $request)
    {
        $categories = ModelsCategories::where('type', '1')->get();
        $selectedCategoryId = $request->query('category', $categories->first()->id);

        $wallpapers = FourDwallpaper::where('category_id', $selectedCategoryId)->get();

        $data = $wallpapers->map(function ($wallpaper) {
            return [
                'id' => $wallpaper->id,
                'thumbPath' => $wallpaper->thumbPath,
                'no_of_layers' => $wallpaper->no_of_layers,
                'likes' => $wallpaper->likes,
                'downloads' => $wallpaper->downloads,
                'effect' => $wallpaper->effect,
                'bg_zoom_speed' => $wallpaper->bg_zoom_speed,
                'bg_zoom_intensity' => $wallpaper->bg_zoom_intensity,
                'background_rotation_xaxis' => $wallpaper->background_rotation_xaxis,
                'background_rotation_yaxis' => $wallpaper->background_rotation_yaxis,
                'tags' => $wallpaper->tags,
                'wp_show' => $wallpaper->wp_show,
                'featured' => $wallpaper->featured,
            ];
        });

        // dd($data);
        return view('fourD_wallpapers', [
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

            $wallpaper = FourDwallpaper::findOrFail($validated['id']);
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

            $wallpaper = FourDwallpaper::findOrFail($validated['id']);
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
    public function edit(Request $request, $id)
    {
        $data = FourDwallpaper::findOrFail($id);
        $categories = ModelsCategories::where('type', '1')->get();

        return view('edit_4d_wallpaper', [
            'data' => $data,
            'categories' => $categories,
            'wallpaper_type' => '4d'
        ]);
    }

    public function update(Request $request, $id)
    {
        $wallpaper = FourDWallpaper::findOrFail($id);

        $existingMaskIds = $request->input('existing_masks', []);
        $existingMasks = $wallpaper->masks()->get();

        foreach ($existingMasks as $index => $mask) {
            if (!in_array($mask->id, $existingMaskIds)) {
                Storage::disk('public')->delete($mask->mask_path);
                $mask->delete();
            } else {
                if ($request->hasFile("mask.{$index}")) {
                    Storage::disk('public')->delete($mask->mask_path);
                    $maskFile = $request->file("mask.{$index}");
                    $maskName = Str::uuid() . '.' . $maskFile->getClientOriginalExtension();
                    $maskPath = $maskFile->storeAs("4D_Wallpapers/{$wallpaper->category->name}/masks", $maskName, 'public');
                    $mask->update(['mask_path' => $maskPath]);
                }
            }
        }

        $existingImageIds = $request->input('existing_images', []);
        $existingImages = $wallpaper->images()->get();

        foreach ($existingImages as $index => $image) {
            if (!in_array($image->id, $existingImageIds)) {
                Storage::disk('public')->delete($image->img_path);
                $image->delete();
            } else {
                if ($request->hasFile("imgs.{$index}")) {
                    Storage::disk('public')->delete($image->img_path);
                    $imageFile = $request->file("imgs.{$index}");
                    $imageName = Str::uuid() . '.' . $imageFile->getClientOriginalExtension();
                    $imagePath = $imageFile->storeAs("4D_Wallpapers/{$wallpaper->category->name}/images", $imageName, 'public');
                    $image->update(['img_path' => $imagePath]);
                }
            }
        }
        $categoryFolder = "4D_Wallpapers/{$wallpaper->category->name}";
        if (!Storage::disk('public')->exists($categoryFolder)) {
            Storage::disk('public')->makeDirectory($categoryFolder);
        }
        if ($request->hasFile('thumbPath')) {
            $thumbFile = $request->file('thumbPath');
            $thumbName = Str::uuid() . '.' . $thumbFile->getClientOriginalExtension();
            $thumbPath = $thumbFile->storeAs($categoryFolder, $thumbName, 'public');
            $wallpaper->thumbPath = $thumbPath;
        }

        if ($request->hasFile('mask')) {
            foreach ($request->file('mask') as $maskFile) {
                $maskName = Str::uuid() . '.' . $maskFile->getClientOriginalExtension();
                $maskPath = $maskFile->storeAs("{$categoryFolder}/masks", $maskName, 'public');
                $wallpaper->masks()->create(['mask_path' => $maskPath]);
            }
        }

        if ($request->hasFile('imgs')) {
            foreach ($request->file('imgs') as $imageFile) {
                $imageName = Str::uuid() . '.' . $imageFile->getClientOriginalExtension();
                $imagePath = $imageFile->storeAs("{$categoryFolder}/images", $imageName, 'public');
                $wallpaper->images()->create(['img_path' => $imagePath]);
            }
        }
        $wallpaper->fill($request->except(['mask', 'imgs', 'thumbPath', 'existing_masks', 'existing_images']));
        $wallpaper->save();
        return redirect()->back()->with('success', 'Wallpaper updated successfully.');
    }
    public function create()
    {
        $categories = ModelsCategories::where('type', '1')->get();
        return view('create_4d_wallpaper', [
            'categories' => $categories,
            'wallpaper_type' => '4d'
        ]);
    }
    public function store(Request $request)
    {
        // Validate the form data
        $request->validate([
            'category_id' => 'required|exists:categories,id',
            'thumbPath' => 'nullable|image|mimes:jpeg,png,jpg,gif', // Make it nullable
            'tags' => 'nullable|string',
            'effect' => 'nullable|string',
            'bg_zoom_speed' => 'nullable|numeric',
            'bg_zoom_intensity' => 'nullable|numeric',
            'background_rotation_xaxis' => 'nullable|numeric',
            'background_rotation_yaxis' => 'nullable|numeric',
            'no_of_layers' => 'nullable|integer',
            'mask.*' => 'nullable|image|mimes:jpeg,png,jpg,gif',
            'imgs.*' => 'nullable|image|mimes:jpeg,png,jpg,gif',
        ]);

        // Get the category folder structure
        $categoryFolder = "4D_Wallpapers/{$request->category_id}";

        // Create the category folder if it doesn't exist
        if (!Storage::disk('public')->exists($categoryFolder)) {
            Storage::disk('public')->makeDirectory($categoryFolder);
        }

        // Create the wallpaper record
        $wallpaperData = [
            'category_id' => $request->category_id,
            'tags' => $request->tags,
            'effect' => $request->effect,
            'bg_zoom_speed' => $request->bg_zoom_speed,
            'bg_zoom_intensity' => $request->bg_zoom_intensity,
            'background_rotation_xaxis' => $request->background_rotation_xaxis,
            'background_rotation_yaxis' => $request->background_rotation_yaxis,
            'no_of_layers' => $request->no_of_layers,
            'likes' => 0,
            'downloads' => 0,
            'featured' => 1,
            'wp_show' => 1,
        ];

        // Handle the thumbnail image if it exists
        if ($request->hasFile('thumbPath')) {
            $thumbFile = $request->file('thumbPath');
            $thumbName = Str::uuid() . '.' . $thumbFile->getClientOriginalExtension();
            $thumbPath = $thumbFile->storeAs($categoryFolder, $thumbName, 'public');
            $wallpaperData['thumbPath'] = $thumbPath;
        }

        $wallpaper = FourDwallpaper::create($wallpaperData);

        // Handle the mask images
        if ($request->hasFile('mask')) {
            foreach ($request->file('mask') as $maskFile) {
                $maskName = Str::uuid() . '.' . $maskFile->getClientOriginalExtension();
                $maskPath = $maskFile->storeAs("{$categoryFolder}/masks", $maskName, 'public');
                $wallpaper->masks()->create(['mask_path' => $maskPath]);
            }
        }

        // Handle the image files
        if ($request->hasFile('imgs')) {
            foreach ($request->file('imgs') as $imageFile) {
                $imageName = Str::uuid() . '.' . $imageFile->getClientOriginalExtension();
                $imagePath = $imageFile->storeAs("{$categoryFolder}/images", $imageName, 'public');
                $wallpaper->images()->create(['img_path' => $imagePath]);
            }
        }
        flash()->success('Wallpaper created successfully!');
        return redirect()->back()->with('success', 'Wallpaper created successfully!');
    }
    public function delete($id)
    {
        $FourDwallpaper = FourDwallpaper::findOrFail($id);
        $FourDwallpaper->delete();
        flash()->success('Deleted successfully.');
        return response()->json(['success' => true, 'message' => 'Deleted successfully.']);
    }
}
