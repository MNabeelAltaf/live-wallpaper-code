<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FourDwallpaper extends Model
{
    use HasFactory;
    protected $table = 'four_dwallpapers';
    protected $fillable = [
        'thumbPath',
        'no_of_layers',
        'likes',
        'downloads',
        'effect',
        'bg_zoom_speed',
        'bg_zoom_intensity',
        'background_rotation_xaxis',
        'background_rotation_yaxis',
        'cat_id',
        'featured',
        'tags',
        'wp_show',
    ];
    public function category()
    {
        return $this->belongsTo(Categories::class, 'cat_id');
    }
    public function events()
    {
        return $this->belongsToMany(Event::class, 'category_event', 'cat_id', 'event_id');
    }
    public function category_event()
    {
        return $this->belongsTo(event_category::class, 'cat_id');
    }
    // Relationship with Masks
    public function masks()
    {
        return $this->hasMany(Mask::class, 'wallpaper_id');
    }

    // Relationship with FourDImages
    public function images()
    {
        return $this->hasMany(FourDImages::class, 'wallpaper_id');
    }
}
