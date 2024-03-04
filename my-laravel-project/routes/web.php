<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CourseCategoryController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'CourseCategory' , 'as' => 'CourseCategory.'] , function () {
    Route::get('/', [CourseCategoryController::class , 'index'])->name('index');
    Route::get('/create', [CourseCategoryController::class , 'create'])->name('create');
    Route::post('/create', [CourseCategoryController::class , 'store'])->name('store');
    Route::get('/edit/{CourseCategory}', [CourseCategoryController::class , 'edit'])->name('edit');
    Route::put('/edit/{CourseCategory}', [CourseCategoryController::class , 'update'])->name('update');
    Route::delete('/destroy/{CourseCategory}', [CourseCategoryController::class , 'destroy'])->name('destroy');
});