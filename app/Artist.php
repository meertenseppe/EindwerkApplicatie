<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Artist extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = ['artist_name'];

    public static function List() {
      /*
      * Returns a list with all artist_names in alphabetical order ({artist_name:name'})
      * returns query results : {artist_name, artist_id}
      */
      $Artists = Artist::select('artist_name', 'id')->orderBy('artist_name')->get();
      return $Artists;
    }

    public static function getNameById($id) {
      /*
      * Finds artist_name according to artist id
      * returns query results : a single artist_name
      */
      $ArtistName = Artist::select('artist_name')->where('id', $id)->get();
      return $ArtistName;
    }


    public static function checkIfExists($artist_name)
    {
      /*
      * Checks if a certain $artist_name allready exists in the database
      * returns boolean : 1 if name exists, 0 if not
      */
      $Bool = Artist::select('artist_name')->where('artist_name', $artist_name)->count();
      if($Bool > 1)
      {
        return 1; //handels error (when the same artist exists more then once) by refusing to add new artist
      } else {
        return $Bool; //true -> artist exists, false -> artist doesnt exist yet
      }
    }

    public function songs()
    {
      //relation : artists - songs
      return $this->hasMany('App\Song');
    }
}
