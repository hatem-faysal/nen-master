<?php

use App\Models\JoinusTabs;
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
        Schema::create('joinus_tabs', function (Blueprint $table) {
            $table->id();
            $table->longText('description')->nullable();
            $table->enum('status', JoinusTabs::STATUS)->default('Active');
            $table->foreignId('project_id')->nullable()->references('id')->on('projects')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('tabs_id')->nullable()->references('id')->on('tabs')->cascadeOnUpdate()->cascadeOnDelete();
            $table->string('type')->nullable();
            $table->integer('sort')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('joinus_tabs');
    }
};
