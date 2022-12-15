<?php

use App\Models\Listing;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;

Route::get('/', [PostController::class, 'index'])->name('blogs');
Route::get('/search', [PostController::class, 'search'])->name('search');
Route::get('/listings/{listing}', [PostController::class, 'viewblog']);
Route::get('/create', [PostController::class, 'viewCreate']);
Route::post('/create', [PostController::class, 'create']);
