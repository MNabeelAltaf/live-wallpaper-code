<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdvanceOptions extends Model
{
    use HasFactory;

    protected $table = 'advance_options';
    protected $fillable = ['wallpaper_type','options','orders'];
    public $timestamps = true;

}
