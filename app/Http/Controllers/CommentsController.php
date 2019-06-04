<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use App\Comment;
use Auth;

class CommentsController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @return View
     */
    public function postComment()
    {
      if (Auth::check()) {
        // code...
      $Content = $_POST['content'];
      $Song_id = $_POST['song_id'];
      $User_id = Auth()->user()->id;

      $Comment = new Comment;
      $Comment->content = $Content;
      $Comment->song_id = $Song_id;
      $Comment->user_id = $User_id;

      $Comment->save();

      return redirect()->back();
    } else { //users must login before commenting
      return redirect()->back()->with('fail_comm', 'Please login before commenting.');

    }

    }
}
