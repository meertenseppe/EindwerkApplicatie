@extends('layouts.app') <!--basic app template-->

@section('head')
  <!--extra header content (bv. scripts, css links, ...)-->
  <title>My Account</title>
@endsection

@section('content')

 <!--main content-->
  <div class="container">
    <div class="row mb-5">
      <div class="col">
      </div>
      <div class="col text-center">
        <img src="{{config('app.storage_url')}}{{Auth::user()->avatar}}" alt="could not find image" style="border-radius: 50%; width: 80%;">

      </div>
      <div class="col p-0">
        <button type="button" class="btn btn-default float-left" data-toggle="modal" data-target="#pictureModal">
          <i class="material-icons">edit</i>
        </button>
      </div>
    </div>

    <div class="row">
      <div class="col"></div>
      <div class="col">
        <div class="row">
          Username: {{ Auth::user()->name }}
        </div>
        <div class="row">
          Email: {{ Auth::user()->email }}
        </div>
        <div class="row">
          <a href="{{route('changePasswordForm')}}">Change Password</a>
        </div>
      </div>
      <div class="col"></div>
    </div>
  </div>

  <!--upload profile pic modal-->
  <div class="modal fade" id="pictureModal" tabindex="-1" role="dialog" aria-labelledby="pictureModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="pictureModalLabel">Upload Profile Picture</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="{{route('UploadPhoto')}}" class="form-horizontal" method="POST" role="form" enctype="multipart/form-data" id="profilePic">
            {{ csrf_field() }}
            <div>
                <input id="avatar" type="file" class="form-control" name="avatar">

            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" form="profilePic">Save changes</button>
        </div>
      </div>
    </div>
  </div>
@endsection
