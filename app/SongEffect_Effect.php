<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class SongEffect_Effect extends Model
{
  public static function joinTables()
  {
    /*
    * joins song_effects with effects
    * gets list with all effects linked to a certain song with that effects name;
    * returns joint query results : {effect_type, effect_id, song_id}
    */
  $Type_Song = SongEffect::leftJoin('effects', 'song_effects.effect_id', '=', 'effects.id')->select('effect_id', 'type', 'song_id')->get();
  return $Type_Song;
  }

  public static function effectsNotUsedBySong($song_id)
  {
    /*
    * joins song_effects with effects
    * gets All effects without the effects in a certain song
    * returns joint query results : {effect_id, effect_type}
    */
    $Effects_in_song = SongEffect::select('effect_id')->where('song_id', $song_id); //gets all effects allready linked with song($song_id)

    $Type_song = Effect::leftJoinSub($Effects_in_song, 'effect_in_song', function($join) {
      $join->on('effects.id', '=', 'effect_in_song.effect_id');})->whereNull('effect_in_song.effect_id')->select('effects.id', 'effects.type')->get();
      //gets all effects exept the ones in $Effects_in_song
    return $Type_song;
  }

}
