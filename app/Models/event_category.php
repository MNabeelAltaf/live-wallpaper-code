<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class event_category extends Model
{
    protected $table = 'event_category';

    protected $fillable = ['event_id','category_id','created'];

}
