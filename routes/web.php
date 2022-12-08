<?php

use Illuminate\Support\Facades\Route;
use App\Models\Listing;

// Get all the listings
Route::get('/', function () {
    return view('listings', [
        'heading' => 'Latest Listings',
        'listings' => Listing::all()
    ]);
});


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
    return "Gelukt";
});
