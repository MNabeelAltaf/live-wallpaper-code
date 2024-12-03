<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('live_wallpapers', function (Blueprint $table) {
            $table->id();
            $table->string('blur_path', 255);
            $table->string('thumb_path', 255);
            $table->string('video_path', 255);
            $table->string('category');
            $table->integer('cat_id');
            $table->integer('likes');
            $table->integer('downloads');
            $table->integer('wp_show');
            $table->integer('featured');
            $table->string('hash_tags',200);
            $table->integer('set_wp');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
