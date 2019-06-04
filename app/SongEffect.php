<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class SongEffect extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = ['song_id', 'effect_id', 'upvotes', 'downvotes'];

    public static function getEffectBySongId($id)
    {
      /*
      * finds effect_id with up/downvotes from a certian song
      * returns query results : {effect_id, upvotes, downvotes, song_effect_id}
      */
      $SongEffects = SongEffect::select('effect_id', 'upvotes', 'downvotes', 'id')->where('song_id', $id)->get();
      return $SongEffects;
    }

    public function votes()
    {
      //relation
      return $this->belongsTo('App\Vote');
    }

    public function song()
    {
      //relation
      return $this->belongsTo('App\Song');
    }

}
