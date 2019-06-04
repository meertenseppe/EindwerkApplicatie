<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Vote extends Model
{
  protected $fillable = [
    'value'
  ];

  protected $primaryKey = 'id';

  public function user()
  {
    return $this->belongsTo('App\User');
  }

  public function song_effect()
  {
    return $this->belongsTo('App\SongEffect');
  }

  public static function findVote($song_effect_id)
  {
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
    $vote = Vote::where([['song_effect_id', $song_effect_id], ['user_id', $user_id]])->first();
    return $vote;
  }


} //end class
