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
        Schema::create('four_D_Images', function (Blueprint $table) {
            $table->id();
            $table->foreignId('wallpaper_id')
                ->constrained('four_dwallpapers')
                ->onDelete('cascade');
            $table->text('img_path');
            $table->integer('order');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('four_D_Images');
    }
};
