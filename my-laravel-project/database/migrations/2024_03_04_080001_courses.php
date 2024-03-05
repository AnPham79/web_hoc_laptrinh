<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Courses extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->string('tieude_khoahoc', 255);
            $table->string('anhminhhoa');
            $table->string('mota_khoahoc', 1000);
            $table->string('gia_khoahoc', 100);
            $table->string('tacgia_khoahoc', 100);
            $table->foreignId('FK_ma_danhmuc')->constrained('course_categories');
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
        
    }
}
