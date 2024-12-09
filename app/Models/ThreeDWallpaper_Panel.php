<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ThreeDWallpaper_Panel extends Model
{
    use HasFactory;

    protected $table = '3d_wallpapers';
    protected $fillable = [
        'blur_path',
        'thumb_path',
        'zip_path',
        'cat_id',
        'likes',
        'downloads',
        'set_wp',
        'hash_tags',
        'wp_show',
        'featured',
    ];

    public function category()
    {
        return $this->belongsTo(Categories::class, 'cat_id');
    }
    public function events(){
        return $this->belongsTo(event::class, 'cat_id');
    }



}
