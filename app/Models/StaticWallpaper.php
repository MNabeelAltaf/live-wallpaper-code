<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StaticWallpaper extends Model
{
    use HasFactory;

    protected $table = 'static_wallpapers'; // Table name

    protected $fillable = [
        'asset_type',
        'img_path',
        'thumb_path',
        'blur_path',
        'cat_id',
        'likes',
        'downloads',
        'unlike',
        'set_wp',
        'hash_tags',
        'wp_show',
        'featured',
    ];
    public function category()
    {
        return $this->belongsTo(Categories::class, 'cat_id');
    }
}
