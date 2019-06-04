<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Comment extends Model
{
  protected $fillable = ['user_id'];



  public static function commentsPerSong($Song_id)
  {
    $Comments = Comment::where('song_id', $Song_id)->get();

    foreach ($Comments as $Comment) {
      $User= User::select('name', 'avatar')->where('id', $Comment->user_id)->first();
      $Comment->setAttribute('user_name', $User->name);
      $Comment->setAttribute('avatar', $User->avatar);

    }
    return $Comments;
  }

}
