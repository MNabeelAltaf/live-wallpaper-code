<?php

use App\Http\Controllers\Categories;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\StaticWallpaperController;
use App\Http\Controllers\LiveWallpaperController;
use App\Http\Controllers\ThreeDWallpaperController;
use App\Http\Controllers\AddWallpaperController;
use App\Http\Controllers\EventsController;
use App\Http\Controllers\FourDWallpaperController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    /*
    *   categories
    */
    Route::get('/categories', [Categories::class, 'index'])->name('categories.index');
    Route::get('/category/add',[Categories::class, 'addCategoryView'])->name('category.addView');
    Route::post('/category/add',[Categories::class, 'addCategory'])->name('category.add');
    Route::post('/categories/update-show', [Categories::class, 'updateShow'])->name('categories.updateShow');
    Route::get('/categories/{id}/edit', [Categories::class, 'edit']);
    Route::get('/categories/{id}/delete', [Categories::class, 'delete']);
    Route::post('/categories/update', [Categories::class, 'update'])->name('categories.update');

    Route::get('/wallpapers', [StaticWallpaperController::class, 'index'])->name('wallpapers.index');
    Route::post('/wallpapers/update-show', [StaticWallpaperController::class, 'updateShow'])->name('wallpapers.updateShow');
    Route::post('/wallpapers/update-featured', [StaticWallpaperController::class, 'updateFeatured'])->name('wallpapers.updateFeatured');
    Route::get('/wallpapers/{id}/delete', [StaticWallpaperController::class, 'delete']);
    Route::get('/wallpapers/{id}/edit', [StaticWallpaperController::class, 'edit'])->name('wallpapers.edit');
    Route::get('/wallpapers/create', [StaticWallpaperController::class, 'create'])->name('wallpapers.create');

    // live wallpapers
    Route::get('/live-wallpapers', [LiveWallpaperController::class, 'index'])->name('live_wallpapers.index');
    Route::get('/live-wallpapers/show-category-records', [LiveWallpaperController::class, 'showCategoryRecords'])->name('live_wallpapers.showRecords');
    Route::post('/live-wallpapers/update-featured', [LiveWallpaperController::class, 'updateFeatured'])->name('live_wallpapers.updateFeatured');
    Route::post('/live-wallpapers/update-show', [LiveWallpaperController::class, 'updateShow'])->name('live_wallpapers.updateShow');
    Route::get('/live-wallpapers/create', [LiveWallpaperController::class, 'create'])->name('live_wallpapers.create');


    // 3d wallpapers routes
    Route::get('/3d-wallpapers', [ThreeDWallpaperController::class, 'index'])->name('3d_wallpapers.index');
    Route::get('/3d-wallpapers/create', [ThreeDWallpaperController::class, 'create'])->name('3d_wallpapers.create');
    Route::get('/3d-wallpapers/{id}/edit', [ThreeDWallpaperController::class, 'edit'])->name('3d_wallpapers.edit');
    Route::get('/3d-wallpapers/{id}/delete', [ThreeDWallpaperController::class, 'delete'])->name('3d_wallpapers.delete');
    Route::post('/3d-wallpapers/update-show', [ThreeDWallpaperController::class, 'updateShow'])->name('3d_wallpapers.updateShow');
    Route::post('/3d-wallpapers/update-featured', [ThreeDWallpaperController::class, 'updateFeatured'])->name('3d_wallpapers.updateFeatured');
    Route::get('/3d-wallpapers/show-category-records', [ThreeDWallpaperController::class, 'showCategoryRecords'])->name('3d_wallpapers.showRecords');
    
    // 4d wallpapers routes
    Route::get('/4d-wallpapers', [FourDWallpaperController::class, 'index'])->name('4d_wallpapers.index');
    Route::post('/4d-wallpapers/update-show', [FourDWallpaperController::class, 'updateShow'])->name('4d_wallpapers.updateShow');
    Route::post('/4d-wallpapers/update-featured', [FourDWallpaperController::class, 'updateFeatured'])->name('4d_wallpapers.updateFeatured');
    Route::get('/4d-wallpapers/{id}/delete', [FourDWallpaperController::class, 'delete']);
    Route::get('/4d-wallpapers/{id}/edit', [FourDWallpaperController::class, 'edit'])->name('4d_wallpapers.edit');
    Route::get('/4d-wallpapers/create', [FourDWallpaperController::class, 'create'])->name('4d_wallpapers.create');
    Route::put('/4d-wallpapers/{id}', [FourDWallpaperController::class, 'update'])->name('4d_wallpapers.update');
    Route::post('/4d-wallpapers/store', [FourDWallpaperController::class, 'store'])->name('4d_wallpapers.store');
    
    // events routes
    Route::get('/events', [EventsController::class, 'index'])->name('events.index');
    Route::get('/events/{id}/edit', [EventsController::class, 'edit']);
    Route::post('/events/update', [EventsController::class, 'update'])->name('events.update');


    Route::post('/wallpaper-create',[AddWallpaperController::class, 'addWallpaper'])->name('create-wallpaper');
    Route::post('/wallpaper-edit',[AddWallpaperController::class, 'editWallpaper'])->name('edit-wallpaper');

});

require __DIR__.'/auth.php';
