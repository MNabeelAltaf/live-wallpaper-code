<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FourDImages extends Model
{
    use HasFactory;

    protected $fillable = ['wallpaper_id', 'img_path'];

    public function wallpaper()
    {
        return $this->belongsTo(FourDwallpaper::class, 'wallpaper_id');
    }
}