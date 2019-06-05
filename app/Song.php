<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Song extends Model
{
  protected $primaryKey = 'id';
  //protected $fillable = ['artist_id', 'song_name'];

  public static function List($id = 'all') {
    /*
    * Returns a list with all song_names in alphabetical order ({artist_name:name'})
    * Accepts optional parameter $id to find only songs from an artist with a certain id
    * returns query results : {song_name, id}
    */
    if ($id == 'all'){
      $Songs = Song::select('song_name', 'id', 'artist_id')->orderBy('song_name')->get();
    } else {
      $Songs = Song::select('song_name', 'id', 'artist_id')->where('artist_id', $id)->orderBy('song_name')->get();
    }
    return $Songs;
  }

  public static function DefineSong($id) {
    /*
    * gets the song_name and artist_id from a song_id
    * returns query results : {song_name, artist_id}
    */
    $Song = Song::select('song_name', 'artist_id')->where('id', $id)->get();
    return $Song;
  }

  public static function CountSongsPerArtist($id)
  {
    /*
    * counts the number of songs a certain artist with artist_id has
    * returns int : number_of_songs
    */
    $Count = Song::where('artist_id', $id)->count();
    return $Count;
  }

  public static function SearchForSongs($SearchQuota)
  {
    /*
    * searches for songs that match the SearchQuota
    * returns query results : {song_name, artist_id, song_id}
    */
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
    /*
    * checks if a certain song exists from song_name and artist_id
    * returns boolean : 1 if it does, 0 if it doesnt
    */

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
    //relation
    return $this->belongsTo('App\Artist');
  }

  public function song_effects()
  {
    //relation
    return $this->hasMany('App\SongEffect');
  }

}
