<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers;
use App\Artist as Artist;
use App\Song as Song;

class ArtistsController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @return View
     */
    public function show()
    {
      $ArtistList = Artist::List();
      $Max = ceil(Artist::count()/4);
      return view('artists/artistList', ['ArtistList' => $ArtistList, 'Max' => $Max]);
    }

    public function showSongs($id)
    {
      $SongList = Song::List($id);
      $Max = ceil(Song::CountSongsPerArtist($id)/4);
      $ArtistName = Artist::getNameById($id);
      $ArtistName = $ArtistName[0]->artist_name; 
      return view('artists/artist', ['SongList' => $SongList, 'Max' => $Max, 'ArtistName' => $ArtistName]);
    }
}
