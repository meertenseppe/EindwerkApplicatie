<?php

namespace App\Http\Controllers;

use App\User as User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Traits\UploadTrait;
use Illuminate\Http\Request;


class MyAccountController extends Controller
{
    use UploadTrait;


    public function __construct()
    {
        $this->middleware('auth');
    }


    public function show()
    {
      /**
       * Show the profile for the given user.
       *
       * @return View
       */
      if (Auth::check()) {
        return view('myAccount/myAccount');

      } else {

        return redirect()->route('login'); //users that arent logged in should login first

      }

    }



    public function uploadPhoto(Request $request)
   {
       // Form validation
       $request->validate([
           'avatar'     =>  'required|image|mimes:jpeg,png,jpg,gif|max:2048'
       ]);
       // Get current user
       $user = User::findOrFail(auth()->user()->id);

       // Check if a profile image has been uploaded
       if ($request->has('avatar')) {
           // Get image file
           $image = $request->file('avatar');
           // Make a image name based on user name and current timestamp
           $name = str_slug( Auth::user()->name ).'_'.time();
           // Define folder path
           $folder = '/users';
           // Make a file path where image will be stored [ folder path + file name + file extension]
           $filePath = $folder .'/'. $name. '.' . $image->getClientOriginalExtension();
           // Upload image
           $this->uploadOne($image, $folder, 'public', $name);
           // Set user profile image path in database to filePath
           $user->avatar = $filePath;
       }
       // Persist user record to database
       $user->save();

       // Return user back and show a flash message
       return redirect()->back()->with(['status' => 'Profile updated successfully.']);

   }
}
