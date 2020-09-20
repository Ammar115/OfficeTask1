<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOfficeDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('office_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('registry_id');
            $table->string('phone_num', 11);
            $table->string('cnic_num', 13);
            $table->string('post', 50);
            $table->string('work_description', 191);
            $table->integer('exchange_num');
            $table->integer('office_id');
            $table->string('office_email')->unique();
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
        Schema::dropIfExists('office_details');
    }
}
