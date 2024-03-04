<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CourseCategory;
use App\Http\Requests\CourseCategoryRequest;

class CourseCategoryController extends Controller
{
    public function index()
    {
        $data = CourseCategory::all();

        return view('CourseCategory.index', [
            'data' => $data
        ]);
    }


    public function create()
    {
        return view('CourseCategory.create');
    }

    public function store(CourseCategoryRequest $request)
    {
        CourseCategory::create([
            'tendanhmuc_khoahoc' => $request->tendanhmuc_khoahoc
        ]);

        return redirect()->route('CourseCategory.index');
    }

    public function edit($id)
    {
        $CourseCategory = CourseCategory::find($id);
        return view(
            'CourseCategory.edit',
            [
                'CourseCategory' => $CourseCategory
            ]
        );
    }

    public function update(Request $request, CourseCategory $CourseCategory)
    {
        CourseCategory::where('id', $CourseCategory->id)
            ->update($request->except(
                [
                    '_token',
                    '_method'
                ]
            ));
        return redirect()->route('CourseCategory.index');
    }

    public function destroy(Request $request, CourseCategory $CourseCategory)
    {
        $CourseCategory->delete();

        return redirect()->route('CourseCategory.index');
    }
}
