<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'thumbnail', 'show', 'type'];
    protected $table = 'categories';
    public function wallpapers()
    {
        return $this->hasMany(StaticWallpaper::class, 'cat_id');
    }
    public function threeDwallpapers()
    {
        return $this->hasMany(ThreeDWallpaper_Panel::class, 'cat_id');
    }
    public function fourDwallpapers()
    {
        return $this->hasMany(FourDwallpaper::class, 'cat_id');
    }
    public function liveWallpapers()
    {
        return $this->hasMany(LiveWallpapers_Panel::class, 'cat_id');
    }

    public function events()
    {
        return $this->belongsToMany(Event::class, 'category_event', 'cat_id', 'event_id')
            ->withTimestamps();
    }
}

