<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
       Schema::create('plans', function (Blueprint $table) {
    $table->id();
    $table->string('name');
    $table->string('stripe_plan_id'); // Store Stripe's plan ID
    $table->decimal('price', 10, 2);
    $table->string('currency')->default('USD');
    $table->text('description')->nullable();
    $table->timestamps();
});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('plans');
    }
};
