<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Artist extends Model
{
    protected $fillable = ['artist_name', 'artist_picture'];

    public static function List() {
      /*
      * Returns a list with all artist_names in alphabetical order ({artist_name:name'})
      */
      $Artists = Artist::select('artist_name', 'id')->orderBy('artist_name')->get();
      return $Artists;
    }

    public static function getNameById($id) {
      /*
      * Finds artist_name according to artist id
      */
      $ArtistName = Artist::select('artist_name')->where('id', $id)->get();
      return $ArtistName;
    }

    public function songs()
    {
      return $this->hasMany('App\Song');
    }

    public static function checkIfExists($artist_name)
    {
      $Bool = Artist::select('artist_name')->where('artist_name', $artist_name)->count();
      if($Bool > 1)
      {
        return 1; //handels error (when the same artist exists more then once) by refusing to add new artist
      } else {
        return $Bool; //true -> artist exists, false -> artist doesnt exist yet
      }
    }
}
