<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class SongEffect_Effect extends Model
{
  public static function joinTables()
  {
    /*
    * returns list with all effects linked to a song and the effects name;
    */
  $Type_Song = SongEffect::leftJoin('effects', 'song_effects.effect_id', '=', 'effects.id')->select('effect_id', 'type', 'song_id')->get();
  return $Type_Song;
  }

  public static function effectsNotUsedBySong($song_id)
  {
    /*
    * gets all effects allready linked with song($song_id) (All_effects \ Effect_in_song)
    */
    $Effects_in_song = SongEffect::select('effect_id')->where('song_id', $song_id);

    $Type_song = Effect::leftJoinSub($Effects_in_song, 'effect_in_song', function($join) { $join->on('effects.id', '=', 'effect_in_song.effect_id');})->whereNull('effect_in_song.effect_id')->select('effects.id', 'effects.type')->get();
    return $Type_song;
  }

}
