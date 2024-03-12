<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseUser extends Model
{
    use HasFactory;

    public $fillable = [
        'FK_ma_khoahoc',
        'FK_ma_nguoidung'
    ];
}
