<?php

use App\Models\Listing;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;

// // Get all the listings

Route::get('/', [PostController::class, 'index'])->name('blogs');

Route::get('/search', [PostController::class, 'search'])->name('search2');


Route::get('/listings/{listing}', function (Listing $listing) {
    return view('listing', [
        'listing' => $listing
    ]);
});

Route::get('/create', function () {
    return view('create');
});

Route::post('/create', function () {
    $newListing = new Listing();

    $newListing->title = request('title');
    $newListing->introduction = request('introduction');

    $newListing->author = request('author');
    $newListing->author_status = request('author_status');
    $newListing->tags = request('tags');

    $newListing->body_title = request('body_title');
    $newListing->body = request('body');

    $newListing->conclusion_title = request('conclusion_title');
    $newListing->conclusion = request('conclusion');

    $newListing->image = request('image');

    $newListing->save();
    return redirect()->back()->withErrors(['msg' => 'The Message']);

});