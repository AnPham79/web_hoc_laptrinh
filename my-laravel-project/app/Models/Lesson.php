<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    use HasFactory;

    public $fillable = [
        'tieude_baihoc',
        'video_baihoc',
        'noidung_baihoc',
        'FK_ma_khoahoc'
    ];
}
