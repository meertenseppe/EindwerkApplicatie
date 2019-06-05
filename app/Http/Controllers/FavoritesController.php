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
      /**
       * loads favoritesList view
       * returns view : favorites/favorites with variables [list:{song_id, song_name, artist_id, artist_name}, number_of_songs_per_column]
       * returns redirect : login if user isn't logged in yet
       */
      if (Auth::check()) {

      // Get current user_id
      $user_id = User::find(auth()->user()->id)->id;
      //get song_id/name artist_id/name of all favorites
      $ReturnList = F_S_A::getFavoritesByUser($user_id);
      //get max number of songs per column
      $Max = Favorite::DevideSongsInColumns($user_id, 2);

      return view('favorites/favorites', ['ReturnList' => $ReturnList, 'Max' => $Max]);
      } else {
        return redirect()->route('login'); //users that arent logged in should login first
      }

    }

    public function deleteFavorite()
    {
      /**
       * deletes a song from favorites table
       * returns redirect : back
       */
      $Song_id = $_POST['delete_id'];
      $User_id = Auth()->user()->id;
      //select a certain song from a certain users favorites
      $DeleteFav = Favorite::where([['song_id', $Song_id], ['user_id', $User_id]])->first();
      $DeleteFav->delete();

      return redirect()->back();
    }

    public function addFavorite()
    {
      /**
       * adds a song to favorites table
       * returns redirect : back->with succes or fail
       */
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
