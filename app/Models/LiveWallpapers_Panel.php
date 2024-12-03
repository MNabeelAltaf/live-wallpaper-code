<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class LiveWallpapers_Panel extends Model
{

    use HasFactory;
    protected $table = 'live_wallpapers';
    protected $fillable = [
        'blur_path',
        'thumb_path',
        'video_path',
        'category',
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
        return $this->belongsTo(Categories::class);
    }
}
