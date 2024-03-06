<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\CourseCategory;

class Course extends Model
{
    use HasFactory;

    public $fillable = [
        'tieude_khoahoc', 'anhminhhoa', 'mota_khoahoc', 'gia_khoahoc', 'tacgia_khoahoc', 'FK_ma_danhmuc'
    ];

    public function CourseCategory()
    {
        return $this->belongsTo(CourseCategory::class, 'FK_ma_danhmuc');
    }

    public function setNumberFormat()
    {
        return number_format($this->gia_khoahoc);
    }
}
