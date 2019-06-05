<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers;
use App\Artist as Artist;
use App\Song as Song;

class ArtistsController extends Controller
{

    public function show()
    {
      /**
       * loads artistList view
       * returns view : artists/artistList with variables [list_of_artist_Names_and_Ids, number_of_artists_per_column]
       */
      $ArtistList = Artist::List();
      $Max = ceil(Artist::count()/4);
      return view('artists/artistList', ['ArtistList' => $ArtistList, 'Max' => $Max]);
    }

    public function showSongs($id)
    {
      /**
       * loads artist.songlist view
       * returns view: artists/artist with variables [list_of_song_Names_and_Ids, number_of_songs_per_column, artist_name]
       */
      $SongList = Song::List($id);
      $Max = ceil(Song::CountSongsPerArtist($id)/4);
      $ArtistName = Artist::getNameById($id);
      $ArtistName = $ArtistName[0]->artist_name;
      return view('artists/artist', ['SongList' => $SongList, 'Max' => $Max, 'ArtistName' => $ArtistName]);
    }
}
