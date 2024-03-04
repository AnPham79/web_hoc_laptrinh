<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('ten_hocvien');
            $table->string('anhdaidien')->nullable();
            $table->string('email')->unique();
            $table->string('matkhau');
            $table->string('sodienthoai', 11);
            $table->string('sodutaikhoan')->default(1000000);
            $table->foreignId('FK_ma_khoahoc')->constrained('courses')->default(null);
            $table->integer('quyen')->default(1);
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
        Schema::dropIfExists('users');
    }
}
