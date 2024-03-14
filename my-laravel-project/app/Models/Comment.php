<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class Comment extends Model
{
    use HasFactory;

    public $fillable = [
        'noidung_binhluan',
        'FK_ma_khoahoc',
        'FK_ma_nguoidung',
    ];

    public function NameUserInComment()
    {
        return $this->belongsTo(User::class, 'FK_ma_nguoidung');
    }
}
