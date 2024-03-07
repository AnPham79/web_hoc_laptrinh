<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CourseCategoryController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\AuthController;
use App\Http\Middleware\checkLoginMiddleware;
use App\Http\Middleware\checkSuperAdminMiddleware;

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

Route::get('/login', [AuthController::class, 'login'])->name('login');
Route::post('/login', [AuthController::class, 'process_login'])->name('process_login');

Route::group(['middleware' => checkLoginMiddleware::class], function () {
    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
    Route::group(['prefix' => 'CourseCategory', 'as' => 'CourseCategory.'], function () {
        Route::get('/', [CourseCategoryController::class, 'index'])->name('index');
        Route::get('/create', [CourseCategoryController::class, 'create'])->name('create');
        Route::post('/create', [CourseCategoryController::class, 'store'])->name('store');
        Route::get('/edit/{CourseCategory}', [CourseCategoryController::class, 'edit'])->name('edit');
        Route::put('/edit/{CourseCategory}', [CourseCategoryController::class, 'update'])->name('update');
        Route::delete('/destroy/{CourseCategory}', [CourseCategoryController::class, 'destroy'])
            ->name('destroy')
            ->middleware(checkSuperAdminMiddleware::class);
    });

    Route::group(['prefix' => 'Course', 'as' => 'Course.'], function () {
        Route::get('/', [CourseController::class, 'index'])->name('index');
        Route::get('/create', [CourseController::class, 'create'])->name('create');
        Route::post('/create', [CourseController::class, 'store'])->name('store');
        Route::delete('/destroy/{Course}', [CourseController::class, 'destroy'])
            ->name('destroy')
            ->middleware(checkSuperAdminMiddleware::class);
        Route::get('/edit/{Course}', [CourseController::class, 'edit'])->name('edit');
        Route::put('/edit/{Course}', [CourseController::class, 'update'])->name('update');
    });
});