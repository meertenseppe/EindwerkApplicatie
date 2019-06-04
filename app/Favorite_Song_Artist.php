<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Favorite_Song_Artist extends Model
{
    public static function getFavoritesByUser($id)
    {
      //get song_id's form favorites table
      $Favorite = Favorite::select('song_id')->where('user_id', $id);

      //leftJoin $Songs with songs table => get songs id and artist_id
      $Favorite_Song = Song::leftJoinSub($Favorite, 'userFavorites', function($join){
        $join->on('songs.id', '=', 'userFavorites.song_id');
      })->whereNotNull('userFavorites.song_id')->select('userFavorites.song_id', 'songs.song_name', 'songs.artist_id'); //whereNotNull => only songs in Favorites

      //leftJoin $Favorite with artist table => get songs artist_name
      $Favorite_Song_Artist = Artist::leftJoinSub($Favorite_Song, 'favoriteSongs', function($join){
        $join->on('favoriteSongs.artist_id', '=', 'artists.id');
      })->whereNotNull('favoriteSongs.song_id')->select('favoriteSongs.song_id', 'favoriteSongs.song_name', 'favoriteSongs.artist_id','artists.artist_name')->get(); //whereNotNull => only songs in Favorites

      return $Favorite_Song_Artist;
    }
}
