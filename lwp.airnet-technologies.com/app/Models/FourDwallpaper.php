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
        'category_id',
        'featured',
        'tags',
        'wp_show',
    ];
    public function category()
    {
        return $this->belongsTo(Categories::class);
    }
}
