<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Favorite extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = ['user_id', 'song_id'];

    public static function devideSongsInColumns($user_id, $NumberOfColumns)
    {
      /*
      * counts the number of favorite songs a user has, and calculates how many songs should be put in one column
      * returns int : number_of_songs_per_column
      */
      $NumberOfSongs = Favorite::where('user_id', $user_id)->count();
      $SongsPerColumn = ceil($NumberOfSongs/$NumberOfColumns);

      return $SongsPerColumn;
    }
}
