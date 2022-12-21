<?php

use App\Models\Listing;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CommentsController;

use App\Http\Controllers\NewsletterController;
use App\Services\Newsletter;
use Illuminate\Database\Eloquent\ModelNotFoundException;

Route::get('/', [PostController::class, 'index'])->name('blogs');
Route::get('/search', [PostController::class, 'search'])->name('search');
Route::get('/listings/{listing}', [PostController::class, 'viewblog']);
Route::get('/create', [PostController::class, 'viewCreate']);
Route::post('/create', [PostController::class, 'create']);
Route::post('newsletter', [NewsletterController::class]);

Route::post('/createcomment', [CommentsController::class, 'create'])->name('createcomment_link');

// Route::get('ping', function () {
//     $mailchimp = new \MailchimpMarketing\ApiClient();


//     $mailchimp->setConfig([
//         'apiKey' => config('services.mailchimp.key'),
//         'server' => 'us11'

//     ]);
//     $response = $mailchimp->lists->getAllLists();

//     ddd($response);
// });

