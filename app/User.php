<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use \TCG\Voyager\Models\User as VoyagerUser;

class User extends VoyagerUser implements MustVerifyEmail
{

    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'avatar'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function getImageAttribute()
    {
      /*
      * returns image_url : avatar
      */
       return $this->avatar;
    }

    public function votes()
    {
      //relation
      return $this->hasMany('App\vote');
    }

    public static function NameAndAvatarById($id)
    {
      /*
      * gets both avatar and user_name from user_id
      * returns query result  : {user_name, avatar}
      */
      $User= User::select('name', 'avatar')->where('id', $id)->first();
      return $User;
    }


}
