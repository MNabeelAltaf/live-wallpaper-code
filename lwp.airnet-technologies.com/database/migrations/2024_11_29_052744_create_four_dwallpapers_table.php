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
        Schema::create('four_dwallpapers', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id');
            $table->text('thumbPath');
            $table->integer('no_of_layers');
            $table->integer('likes')->default(0);
            $table->integer('downloads')->nullable()->default(0);
            $table->integer('effect');
            $table->integer('bg_zoom_speed');
            $table->integer('bg_zoom_intensity');
            $table->integer('background_rotation_xaxis');
            $table->integer('background_rotation_yaxis');
            $table->integer('featured')->default(1);
            $table->text('tags');
            $table->integer('wp_show')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('four_dwallpapers');
    }
};
