<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Illuminate\Http\Request;

class PostController extends Controller
{

    public static function index()
    {

        $blogs = Listing::all();

        return view('listings', [
            'listings' => $blogs
        ]);
    }

    public static function search(Request $request)
    {

        $searchQuery = $request->search;

        $blogsNew = Listing::where('title', 'LIKE', '%' . $searchQuery . '%')->get();



        return view('listings', [
            'listings' => $blogsNew
        ]);
    }

    public function create(Request $request)
    {
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
    }
}
