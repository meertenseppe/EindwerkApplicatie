<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Song extends Model
{
  protected $fillable = ['artist_id', 'song_name'];

  public static function List($id = 'all') {
    /*
    * Returns a list with all** song_names in alphabetical order ({artist_name:name'})
    ** Accepts parameter $id to find only songs from an artist with a certain id
    */
    if ($id == 'all'){
      $Songs = Song::select('song_name', 'id')->orderBy('song_name')->get();
    } else {
      $Songs = Song::select('song_name', 'id')->where('artist_id', $id)->orderBy('song_name')->get();
    }
    return $Songs;
  }

  public static function DefineSong($id) {
    /*
    * Returns the songs name and artist_id
    */
    $Song = Song::select('song_name', 'artist_id')->where('id', $id)->get();
    return $Song;
  }

  public static function CountSongsPerArtist($id)
  {
    /*
    *
    */
    $Count = Song::where('artist_id', $id)->count();
    return $Count;
  }

  public static function SearchForSongs($SearchQuota)
  {
    $Songs = Song::select('song_name', 'artist_id', 'id')->where('song_name', 'like', '%'.$SearchQuota.'%')->orderBy('song_name')->get();
    return $Songs;
  }

  public static function DevideSongsInColumns($SearchQuota, $NumberOfColumns)
  {
    /*
    * Determines the max number of songs per column
    */
    $NumberOfSongs = Song::where('song_name', 'like', '%'.$SearchQuota.'%')->count();
    $SongsPerColumn = ceil($NumberOfSongs/$NumberOfColumns);
    return $SongsPerColumn;
  }


  public static function checkIfExists($song_name, $artist_id)
  {
    $Bool = Song::select('song_name', 'artist_id')->where([['song_name', $song_name], ['artist_id', $artist_id ]])->count();
    if($Bool > 1)
    {
      return 1; //handels error (when the same song exists more then once) by refusing to add new song
    } else {
      return $Bool; //true -> song exists, false -> song doesnt exist yet
    }
  }


  public function artist()
  {
    return $this->belongsTo('App\Artist');
  }

  public function song_effects()
  {
    return $this->hasMany('App\SongEffect');
  }

}
