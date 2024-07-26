<?php

use App\Models\Education;
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
        Schema::create('education', function (Blueprint $table) {
            $table->id();
            $table->longText('title')->nullable();
            $table->longText('description')->nullable();
            $table->enum('status', Education::STATUS)->default('Active');
            $table->foreignId('pages_id')->nullable()->references('id')->on('pages')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('childe_pages_id')->nullable()->references('id')->on('pages')->cascadeOnUpdate()->cascadeOnDelete();
            $table->integer('sort')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('education');
    }
};
