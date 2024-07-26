<?php

use App\Models\HelpTabs;
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
        Schema::create('help_tabs', function (Blueprint $table) {
            $table->id();
            $table->longText('title')->nullable();
            $table->longText('description')->nullable();
            $table->enum('status', HelpTabs::STATUS)->default('Active');
            $table->foreignId('project_id')->nullable()->references('id')->on('projects')->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('tabs_id')->nullable()->references('id')->on('tabs')->cascadeOnUpdate()->cascadeOnDelete();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
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
        Schema::dropIfExists('help_tabs');
    }
};
