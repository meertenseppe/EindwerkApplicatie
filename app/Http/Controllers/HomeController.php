<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
      public function __construct()
    {
        //this class uses auth and verified
        $this->middleware(['auth', 'verified']);
    }


    public function index()
    {
        /**
         * loads home
         * returns view : home
         */
        return view('home');
    }
}
