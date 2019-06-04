<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use App\Favorite as Favorite;
use App\Favorite_Song_Artist as F_S_A;
use App\Song as Song;
use Auth;

class FavoritesController extends Controller
{
    public function show()
    {
      // Get current user_id
      $user_id = User::findOrFail(auth()->user()->id)->id;
      //get song_id/name artist_id/name of all favorites
      $ReturnList = F_S_A::getFavoritesByUser($user_id);
      //get max number of songs per column
      $Max = Favorite::DevideSongsInColumns($user_id, 2);
      return view('favorites/favorites', ['ReturnList' => $ReturnList, 'Max' => $Max]);

    }

    public function deleteFavorite()
    {
      $Song_id = $_POST['delete_id'];
      $User_id = Auth()->user()->id;

      $DeleteFav = Favorite::where([['song_id', $Song_id], ['user_id', $User_id]])->first();
      $DeleteFav->delete();

      return redirect()->back();
    }

    public function addFavorite()
    {
      if (Auth::check()){
      $Song_id = $_POST['song_id'];

      $User_id = Auth()->user()->id;

      $Favorite = new Favorite;
      $Favorite->song_id = $Song_id;
      $Favorite->user_id = $User_id;
      $Favorite->save();

      return redirect()->back()->with('succes', 'added to favorites');
    } else {
      return redirect()->back()->with('fail_fav', 'Please login before adding the song to your favorites.');
    }
    }
}
