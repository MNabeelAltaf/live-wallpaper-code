<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;



use Illuminate\Database\Eloquent\Model;

class thumb_live_wallpaper extends Model
{
    // for getting thumbnails of live wallpapers
    // showing on the top slider
    use HasFactory;
    protected $table = 't_3d_lwp_category';
    protected $fillable = ['Cat_name', 'cat_show', 'cat_order', 'thumb_wp',];
}
