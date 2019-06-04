<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Comment extends Model
{
  protected $primaryKey = 'id';
  protected $fillable = ['user_id', 'user_id', 'content'];

  public static function commentsPerSong($Song_id)
  {
    /*
    * Finds all comments for a certain song and adds a user_name and user_avatar to it
    * This function creates what is essentionally a relationship between comments and users;
    * returns list of objects : {id, created_at, song_id, user_id, user_name, user_avatar, content}
    */
    $Comments = Comment::where('song_id', $Song_id)->get();

    foreach ($Comments as $Comment) {
      $User= User::select('name', 'avatar')->where('id', $Comment->user_id)->first();
      $Comment->setAttribute('user_name', $User->name);
      $Comment->setAttribute('avatar', $User->avatar);

    }
    return $Comments;
  }

}
