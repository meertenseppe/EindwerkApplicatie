<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Effect extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = ['type'];


    public static function getEffectById($id)
    {
        /*
        * finds a single effect_type from effect_id
        * returns query results : effect_type
        */
        $EffectType = Effect::select('type')->where('id', $id)->get();
        return $EffectType;
    }


    public static function getIdByType($Type)
    {
      /*
      * gets effect a single effect_id from effect_type
      * returns query result : effect_id
      */
      $query = Effect::select('id')->where('type', $Type)->get();
      $id = $query[0]->id;
      return $id;

    }

    public static function getAllEffects()
    {
      /*
      * gets id and type for all effects
      * returns query results : {id, type}
      */
      $AllEffects = Effect::select('id', 'type')->orderBy('type')->get();
      return $AllEffects;
    }

    public static function checkIfExists($Type)
    {
      /*
      * checks if a certain effect allready exist in the Database
      * returns boolean : 1 if it does; 0 if not
      */
      $Bool = Effect::select('type')->where('type', $Type)->count();
      if($Bool > 1)
      {
        return 1; //handels error (when the same effect exists more then once) by refusing to add new effect
      } else {
        return $Bool;
      }
    }

}
