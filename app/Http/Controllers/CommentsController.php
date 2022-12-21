<?php

namespace App\Http\Controllers;

use App\Models\Comments;
use Illuminate\Http\Request;

class CommentsController extends Controller
{
    public function create(Request $request)
    {
        $comment = new Comments();

        $comment->comment_username = $request->comment_username;
        $comment->comment_body = $request->comment_body;
        $comment->comment_post_id = $request->comment_post_id;

        $comment->save();

        return redirect()->back();
    }
}
