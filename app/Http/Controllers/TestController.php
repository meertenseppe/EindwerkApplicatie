<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use App\Effect as Effect;
use App\SongEffect_Effect as SongEffect_Effect;
use App\Favorite_Song_Artist as FSA;
use App\Artist;
use App\Song;
use App\Vote;
use App\SongEffect;
use Auth;
use App\Comment;

class TestController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @return View
     */
    public function show()
    {
        $comments = Comment::commentsPerSong(1);
        print_r($comments);
        return view('test');

    }
}
