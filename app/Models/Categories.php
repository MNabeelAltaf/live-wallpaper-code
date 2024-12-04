<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'thumbnail', 'show', 'type'];
    protected $table = 'categories';

    // Relation to StaticWallpapers: A category has many static wallpapers
    public function wallpapers()
    {
        return $this->hasMany(StaticWallpaper::class, 'cat_id');
    }

    // Relation to FourDwallpapers: A category has many 4D wallpapers
    public function fourDwallpapers()
    {
        return $this->hasMany(FourDwallpaper::class, 'cat_id');
    }

    // Relation to LiveWallpapers: A category has many live wallpapers
    public function liveWallpapers()
    {
        return $this->hasMany(LiveWallpapers_Panel::class, 'cat_id');
    }

    // Relation to Events: A category can belong to many events
    public function events()
    {
        return $this->belongsToMany(Event::class, 'category_event')
            ->withTimestamps();
    }
}

