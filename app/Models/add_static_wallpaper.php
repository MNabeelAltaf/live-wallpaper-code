<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class add_static_wallpaper extends Model
{
    use HasFactory;

    protected $table = 'add_static_wallpaper';

    protected $fillable = ['random_index', 'asset_type', 'source', 'wlp_or_topic','is_approved','category_name','img_path','thumb_path','blur_path','Category',
                           'cat_id','likes','Downloads','unlike','set_wp','hash_tags','upload_date','wp_show','features','creator_name'];

}
