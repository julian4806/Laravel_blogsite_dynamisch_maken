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

        // IN DE REQUEST VARIABLE ZITTEN ALLE FORM VALUES
        $inputValue = $request->value; //kaas
        $dropdownValue = $request->category; //title, author, body

        if ($inputValue == '' || $dropdownValue == '') {
            return redirect()->route('blogs');
        }


        if ($dropdownValue == "everything") {
            $names = ['introduction', 'title', 'author', 'author_status', 'body_title', 'body', 'conclusion_title', 'conclusion'];
        } else if ($dropdownValue == "title") {
            $names = ['title', 'body_title', 'conclusion_title'];
        } else if ($dropdownValue == "author") {
            $names = ['author', 'author_status'];
        } else if ($dropdownValue == "body") {
            $names = ['introduction', 'body', 'conclusion'];
        }

        $query = Listing::where($names[0], 'LIKE', '%' . $inputValue . '%');
        for ($i = 1; $i < (count($names) - 1); $i++) {
            $query->orWhere($names[$i], 'LIKE', '%' . $inputValue . '%');
        }
        $blogsNew = $query->get();

        return view('listings', [
            'listings' => $blogsNew
        ]);
    }

    public function create(Request $request)
    {
        $newListing = new Listing();

        $newListing->title = $request->title;
        $newListing->introduction = $request->introduction;

        $newListing->author = $request->author;
        $newListing->author_status = $request->author_status;
        $newListing->tags = $request->tags;

        $newListing->body_title = $request->body_title;
        $newListing->body = $request->body;

        $newListing->conclusion_title = $request->conclusion_title;
        $newListing->conclusion = $request->conclusion;

        $newListing->image = $request->image;

        $newListing->save();

        return redirect()->back()->withErrors(['msg' => 'The Message']);
    }

    public function viewCreate()
    {
        return view('create');
    }

    public function viewblog(Listing $listing)
    {
        return view('listing', [
            'listing' => $listing
        ]);
    }
}
