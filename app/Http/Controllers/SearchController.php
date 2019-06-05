<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use App\Song as Song;
use App\Artist as Artist;

class SearchController extends Controller
{

    public function show()
    {
      /*
      * loads search view with list of songs where the song_name matches (in part) the search_quota
      * loads view : search/search with variables [ReturnList: {song_name, artist_name, song_id}, number_of_songs_per_column, search_quota]
      */
      $SearchQuota = $_POST['Search'];
      $ReturnList = Song::SearchForSongs($SearchQuota);

      foreach ($ReturnList as $Song) {
        $ArtistName = Artist::getNameById($Song->artist_id);
        $Song->setAttribute('artist_name', $ArtistName[0]->artist_name);
        //echo $Song->song_name.' - '.$Song->artist_name.' - '.$Song->id.'<br>';
      }
      $Max = Song::DevideSongsInColumns($SearchQuota, 2);

      return view('search/search', ['ReturnList' => $ReturnList, 'Max' => $Max, 'SearchQuota' => $SearchQuota]);

    }
}
