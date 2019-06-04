<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Effect extends Model
{
    public static function getEffectById($id)
    {
        /*
        * returns effect type
        */
        $EffectType = Effect::select('type')->where('id', $id)->get();
        return $EffectType;
    }

    public static function getAllEffects()
    {
      $AllEffects = Effect::select('id', 'type')->orderBy('type')->get();
      return $AllEffects;
    }

    public static function checkIfExists($Type)
    {
      $Bool = Effect::select('type')->where('type', $Type)->count();
      if($Bool > 1)
      {
        return 1; //handels error (when the same effect exists more then once) by refusing to add new effect
      } else {
        return $Bool;
      }
    }

    public static function getIdByType($Type)
    {
      $query = Effect::select('id')->where('type', $Type)->get();
      $id = $query[0]->id;
      return $id;

    }
}
