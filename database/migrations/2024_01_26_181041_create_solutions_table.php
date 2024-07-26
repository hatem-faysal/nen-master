<?php

use App\Models\Solution;
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
        Schema::create('solutions', function (Blueprint $table) {
            $table->id();
            $table->longText('title')->nullable();
            $table->longText('description')->nullable();
            $table->enum('status', Solution::STATUS)->default('Active');
            $table->foreignId('pages_id')->nullable()->references('id')->on('pages')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('tabs_id')->nullable()->references('id')->on('tabs')->cascadeOnUpdate()->cascadeOnDelete();
            $table->integer('sort')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('solutions');
    }
};
