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
        $data = Course::with('CourseCategory')->get();

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

        return redirect()->route('Course.index');
    }

    public function store(Request $request)
    {
        $data = new Course;
        $filePath = $request->file('anhminhhoa')->store('img');
        $data->fill($request->except('_token'));
        $data->anhminhhoa = $filePath;
        $data->save();
    }

    public function destroy(Request $request, Course $Course)
    {
        $Course->delete();

        return redirect()->route('Course.index');
    }

    public function edit($id)
    {
        $data = Course::find($id);
        $CourseCategory = CourseCategory::query()->get();

        return view('Courses.edit', [
            'data' => $data,
            'CourseCategory' => $CourseCategory
        ]);
    }

    public function update(Request $request, Course $Course)
    {
        if ($request->hasFile('anhminhhoa')) {
            Storage::delete($Course->anhminhhoa);

            $filePath = $request->file('anhminhhoa')->storeAs('img', 'custom_filename.jpg');

            $Course->anhminhhoa = $filePath;
        }

        $Course->update($request->except('_token', '_method'));

        return redirect()->route('Course.index');
    }
}
