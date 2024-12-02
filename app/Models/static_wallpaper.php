<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class static_wallpaper extends Model
{


    use HasFactory;
    protected $table = 'static_category';
    protected $fillable = ['cat_name', 'cat_show', 'cat_order', 'thumb_wp',];
}
