<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class event_category extends Model
{
    protected $table = 'category_event';

    protected $fillable = ['event_id','cat_id','created'];



}
