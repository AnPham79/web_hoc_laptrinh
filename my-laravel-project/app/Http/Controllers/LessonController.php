<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\User;
use App\Models\Lesson;
use App\Models\CourseUser;

class LessonController extends Controller
{
    public function index()
    {
        return view('lessons.index');
    }

    public function create()
    {
        $data = Course::query()->get(); 
        return view('lessons.create', [
            'data' => $data
        ]);
    }

    public function store(Request $request)
    {
        $data = new Lesson;
        $data->fill($request->except('_token'));
        $data->save();

        return redirect()->route('Lesson.index');
    }

    public function edit()
    {

    }

    public function update()
    {
    }

    public function delete()
    {
    }
}
