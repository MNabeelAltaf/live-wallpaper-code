<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class all_live_wallpapers extends Model
{
    protected $table = 't_3d_wallpapers';
    protected $fillable = [
        'random_index',
        'asset_type',
        'wlp_or_topic',
        'blur_path',
        'img_path',
        'thumb_path',
        'Category',
        'category_name',
        'extension',
        'cat_id',
        'likes',
        'Downloads',
        'unlike',
        'set_wp',
        'hash_tags',
        'upload_date',
        'wp_show',
        'featured',
        'creator_name',
    ];
}
