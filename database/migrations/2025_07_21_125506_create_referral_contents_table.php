<?php

use Database\Seeders\ReferralContentSeeder;
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
        Schema::create('referral_contents', function (Blueprint $table) {
            $table->id();
            $table->string('heading', 255);
            $table->json('positive_guidelines')->nullable();
            $table->json('negative_guidelines')->nullable();
            $table->string('image_path', 255)->nullable();
            $table->boolean('is_active')->default(true);
            $table->timestamps();
            $table->softDeletes();
        });

        // Seed default referral content after table creation
        (new ReferralContentSeeder)->run();
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('referral_contents');
    }
};
