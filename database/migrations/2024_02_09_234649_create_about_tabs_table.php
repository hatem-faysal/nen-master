<?php

use App\Models\AboutTabs;
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
        Schema::create('about_tabs', function (Blueprint $table) {
            $table->id();
            $table->longText('title')->nullable();
            $table->longText('description')->nullable();
            $table->enum('status', AboutTabs::STATUS)->default('Active');
            $table->foreignId('project_id')->nullable()->references('id')->on('projects')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('tabs_id')->nullable()->references('id')->on('tabs')->cascadeOnUpdate()->cascadeOnDelete();
            $table->string('type')->nullable();
            $table->string('label1')->nullable();
            $table->string('label2')->nullable();
            $table->string('label3')->nullable();
            $table->string('label4')->nullable();
            $table->integer('sort')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('about_tabs');
    }
};
