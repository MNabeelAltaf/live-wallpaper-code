<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'thumbnail', 'show', 'type'];
    protected $table = 'categories';

    public function wallpapers()
    {
        return $this->hasMany(StaticWallpaper::class, 'cat_id');
    }
}
