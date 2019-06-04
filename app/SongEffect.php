<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class SongEffect extends Model
{

    public static function getEffectBySongId($id)
    {
      /*
      * returns effect_id with up/downvotes
      */
      $SongEffects = SongEffect::select('effect_id', 'upvotes', 'downvotes', 'id')->where('song_id', $id)->get();
      return $SongEffects;
    }

    public function votes()
    {
      return $this->belongsTo('App\Vote');
    }

    public function song()
    {
      return $this->belongsTo('App\Song');
    }

}
