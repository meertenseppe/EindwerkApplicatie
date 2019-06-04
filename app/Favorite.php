<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Favorite extends Model
{
    public static function devideSongsInColumns($id, $NumberOfColumns)
    {
      $NumberOfSongs = Favorite::where('user_id', $id)->count();
      $SongsPerColumn = ceil($NumberOfSongs/$NumberOfColumns);

      return $SongsPerColumn;
    }
}
