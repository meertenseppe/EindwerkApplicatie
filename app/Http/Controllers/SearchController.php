<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use App\Song as Song;
use App\Artist as Artist;

class SearchController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @return View
     */
    public function show()
    {
      /*
      * returns view and passes variables with song_name, artist_name, song_id for the song coresponding with the searchquota
      */
      $SearchQuota = $_POST['Search'];

      if($Option = 'Song') {
        $ReturnList = Song::SearchForSongs($SearchQuota);

        foreach ($ReturnList as $Song) {
          $ArtistName = Artist::getNameById($Song->artist_id);
          $Song->setAttribute('artist_name', $ArtistName[0]->artist_name);
          //echo $Song->song_name.' - '.$Song->artist_name.' - '.$Song->id.'<br>';
        }
      } else {
        //search for artist;
      }
      $Max = Song::DevideSongsInColumns($SearchQuota, 2);
      //echo $Max;
      return view('search/search', ['ReturnList' => $ReturnList, 'Max' => $Max, 'Option' => $Option, 'SearchQuota' => $SearchQuota]);

    }
}
