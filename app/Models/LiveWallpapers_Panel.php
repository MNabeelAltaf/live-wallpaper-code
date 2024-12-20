<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\event_category;


class LiveWallpapers_Panel extends Model
{
    use HasFactory;

    protected $table = 'live_wallpapers';
    protected $fillable = [
        'blur_path',
        'thumb_path',
        'video_path',
        'cat_id',
        'likes',
        'downloads',
        'wp_show',
        'featured',
        'hash_tags',
        'set_wp',
    ];

    public function category()
    {
        return $this->belongsTo(Categories::class, 'cat_id');
    }

    public function events()
    {
        return $this->belongsToMany(Event::class, 'category_event', 'cat_id', 'event_id');
    }

    public function category_event(){
        return $this->belongsTo(event_category::class, 'cat_id');
    }
}
