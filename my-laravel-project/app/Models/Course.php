<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    public $fillable = [
        'tieude_khoahoc', 'anhminhhoa', 'mota_khoahoc', 'gia_khoahoc', 'tacgia_khoahoc', 'FK_ma_danhmuc'
    ];
}
