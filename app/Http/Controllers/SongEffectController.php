<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use App\SongEffect as SongEffect;
use App\Effect as Effect;
use App\Vote as Vote;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class SongEffectController extends Controller
{
    public function addEffect()
    {
      /*
      * Adds new effect song pair to song_effects table,
      * adds new effect to effects table if the effect doesnt exist in the database yet
      * returns redirect : back (->with fail if [the 'new' effect allready exists in database, the user isn't logged in]
      */

      if (Auth::check()) {
        $user_id = Auth()->user()->id;
        $SongEffect = new SongEffect;
        $Song_id = $_POST['song_id'];

        if ($_POST['effect_id'] == 'new') {
          $Effect = new Effect;
          $Effect_type = $_POST['effect_type'];
          $Effect_type = ucfirst(strtolower($Effect_type));
          if (Effect::checkIfExists($Effect_type)) { //user tried to add a new effect we allready had
            return redirect()->back()->with('fail', 'The effect you tried to add allready exists in our database,'
            . ' try selecting it when adding the effect to the song.');
          } else { //users added a new effect
          $Effect->type = $Effect_type;
          $Effect->save();

          $Effect_id = Effect::getIdByType($Effect_type);
          $SongEffect->effect_id = $Effect_id;
          $SongEffect->song_id = $Song_id;
          $SongEffect->save();

          $vote = new Vote;
          $vote->user_id = $user_id;
          $vote->song_effect_id = $SongEffect->id;
          $vote->vote = 1;
          $vote->save();

          return redirect()->back();

          }

        } else { //user adds an existing effect
          $Effect_id = $_POST['effect_id'];
          $SongEffect->effect_id = $Effect_id;
          $SongEffect->song_id = $Song_id;
          $SongEffect->save();

          $vote = new Vote;
          $vote->user_id = $user_id;
          $vote->song_effect_id = $SongEffect->id;
          $vote->vote = 1;
          $vote->save();

          return redirect()->back();
        }
      } else {
        return redirect()->back()->with('fail_pls_login', 'Please login before adding an effect.');

      }
    }

}
