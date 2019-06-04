<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Vote extends Model
{
  protected $primaryKey = 'id';
  protected $fillable = ['vote', 'user_id', 'song_effect_id'];


  public static function findVote($song_effect_id)
  {
    /*
    * finds out how the currently logged in user previously voted on an effect
    * returns boolean : vote | or | -1 when the user hasn't voted on this effect yet
    */
    $user_id = Auth()->user()->id;
    $vote = Vote::select('vote')->where([['song_effect_id', $song_effect_id], ['user_id', $user_id]])->first();
    if ($vote === Null){
      return -1;
    } else {
      return $vote->vote;
    }
  }

  public static function findVoteFromDetails($song_effect_id, $user_id)
  {
    /*
    * finds out how the user previously voted on an effect
    * returns boolean : vote
    */
    $vote = Vote::where([['song_effect_id', $song_effect_id], ['user_id', $user_id]])->first();
    return $vote;
  }

  public function user()
  {
    //relation
    return $this->belongsTo('App\User');
  }

  public function song_effect()
  {
    //relation
    return $this->belongsTo('App\SongEffect');
  }

} //end class
