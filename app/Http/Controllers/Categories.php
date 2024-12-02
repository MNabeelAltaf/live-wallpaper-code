<?php

namespace App\Http\Controllers;

use App\Models\Categories as ModelsCategories;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;

class Categories extends Controller
{
    public function index(Request $request): View
    {
        $categories = ModelsCategories::where('type', 1)->get();


        // Map data for the table
        $data = $categories->map(function ($category) {
            return [
                $category->id,
                $category->name,
                $category->thumbnail,
                $category->show,
                $category->created_at->toDateString(),
            ];
        });

        // Pass the columns and data to the view
        return view('categories', [
            'data' => $data
        ]);
    }

    public function addCategoryView(Request $request)
    {
        $categories = ModelsCategories::where('type', '1')->get();

        return view('create_category', [
            'categories' => $categories,
        ]);
    }
    public function addCategory(Request $request)
    {

        $validated = $request->validate([
            'category_name' => 'required|max:255',
            'category_thumbnail' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048',
            'show' => 'nullable|in:on,off',
        ]);


        $cat_visibility = $request->has('show') && $request->show === 'on' ? 1 : 0;

        $thumbnail_folder = 'Categories_thumbnail';

        if ($request->hasFile('category_thumbnail')) {
            $cat_thumb = $request->file('category_thumbnail');
            $thumbnailFilename = strtolower(str_replace(' ', '_', $request->category_name)) . '.' . $cat_thumb->getClientOriginalExtension();
            $thumbnailPath = $cat_thumb->storeAs($thumbnail_folder, $thumbnailFilename, 'public');
        } else {
            $thumbnailPath = null;
        }

        $category_name =  ucfirst($request->category_name);
        $thumbnail = $thumbnailPath;
        $catVisibility = $cat_visibility;

        $isCatExists = $this->checkCategoryExistence($category_name);

        if ($isCatExists) {
            return back()->withErrors(['error' => 'Category already exists']);
        }

        $categoryTable = ModelsCategories::create([
            'name' => $request->category_name,
            'thumbnail' => $thumbnail,
            'show' => $catVisibility,
            'type' => 1,
        ]);

        return redirect()->back()->with('success', 'Category created successfully!');
    }

    public function checkCategoryExistence($category_name)
    {

        $category = ModelsCategories::where('name',  $category_name)->first();

        $catgoryAlreadyExist = null;

        if ($category) {
            $catgoryAlreadyExist = true;
        } else {
            $catgoryAlreadyExist = false;
        }

        return  $catgoryAlreadyExist;
    }

    public function updateShow(Request $request)
    {
        $validated = $request->validate([
            'id' => 'required|exists:categories,id',
            'show' => 'required|boolean',
        ]);

        $category = ModelsCategories::findOrFail($validated['id']);
        $category->show = $validated['show'];
        $category->save();

        return response()->json(['success' => true, 'message' => 'Show status updated successfully.']);
    }
    public function edit($id)
    {
        $category = ModelsCategories::findOrFail($id);
        return response()->json($category); // Send the category data as JSON
    }
    public function update(Request $request)
    {
        $id = $request->id;
        $category = ModelsCategories::findOrFail($id);
        $category->name = $request->name;
        $category->show = $request->has('show') ? 1 : 0;

        if ($request->hasFile('thumbnail')) {
            $categoryFolder = strtolower(str_replace(' ', '_', $category->name));
            $path = $request->file('thumbnail')->storeAs(
                'Static_Wallpapers/' . $categoryFolder . '/thumb',
                $request->file('thumbnail')->getClientOriginalName(),
                'public'
            );

            $category->thumbnail = $path;
        }
        $category->save();

        return redirect()->back()->with('success', 'Category updated successfully!');
    }
    public function delete($id)
    {
        $category = ModelsCategories::findOrFail($id);
        $category->delete();
        return response()->json(['success' => true, 'message' => 'Show status updated successfully.']);
    }
}
