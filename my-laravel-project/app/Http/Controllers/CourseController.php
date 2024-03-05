<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\CourseCategory;
use Illuminate\Support\Facades\Storage;

class CourseController extends Controller
{
    public function index()
    {
        $data = Course::all();

        return view('Courses.index', [
            'data' => $data,
        ]);
    }

    public function create()
    {
        $CourseCategory = CourseCategory::query()->get();
        return view('Courses.create', [
            'CourseCategory' => $CourseCategory
        ]);
    }

    public function store(Request $request)
    {
        $data = new Course;
        $filePath = $request->file('anhminhhoa')->store('imgCourse');
        $data->fill($request->except('_token'));
        $data->anhminhhoa = $filePath;
        $data->save();
    }
}
