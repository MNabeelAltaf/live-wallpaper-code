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
       Schema::create('static_wallpapers', function (Blueprint $table) {
            $table->id();
            $table->string('img_path', 255);
            $table->string('thumb_path', 255);
            $table->text('blur_path');
            $table->integer('cat_id');
            $table->integer('likes');
            $table->integer('downloads');
            $table->integer('unlike');
            $table->integer('set_wp');
            $table->string('hash_tags', 255);
            $table->integer('wp_show');
            $table->integer('featured');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('static_wallpapers');
    }
};
