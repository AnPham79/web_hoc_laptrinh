<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    public $fillable = [
        'noidung_binhluan',
        'FK_ma_khoahoc',
        'FK_ma_nguoidung',
    ];
}
