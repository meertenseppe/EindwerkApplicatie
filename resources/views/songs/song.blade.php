@extends('layouts.app') <!--basic app template-->

@section('head')
  <!--extra header content (bv. scripts, css links, ...)-->
  <title><?php echo ucwords(strtolower($Data['SongName'])).' - FXfinder' ?></title>

@endsection

@section('content')
  <!--main content-->
  <div class="container">
    <div class="row">
      <h1><?php echo ucwords(strtolower($Data['SongName'])); ?></h1>
      <form action="{{route('addFavoriteAction')}}" method="post">
        {{ csrf_field() }}
        <input type="hidden" name="song_id" value="{{$Data['id']}}">
        <button type="submit" name="favorite" class="btn btn-default"> <i class="material-icons text-warning">grade</i>  </button>
      </form>
    </div>
    <div class="row">
      <h2><?php echo ucwords(strtolower($Data['ArtistName'])); ?></h2>
    </div>

  <div class="effects">
    <div class="row">
      @include ('songs.effectBlock', [ 'SongEffects' => $Data["SongEffects"] ])
    </div>

    <div class="row">
      <div class="col">
        <div class="addNew">
          <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModalCenter">Add <br> <span class='add'>+</span> </button>
        </div>
      </div>
       <!--Modal-->
       <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">Add new Effect</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              </button>
            </div>
            <div class="modal-body">
              <form id='add_effect' method="POST" action="{{ route('SongEffectAction')}}"> <!--post id, type and song_id -->
                {{ csrf_field() }}
                <div class="form-group">
                  <label for="effect_id" class="col-form-label">Effect type:</label>
                  <select type="select" class="form-control" id="effect_id" name="effect_id" onchange="isNew('effect_id', 'effect_type')">
                      <?php $AllEffectsNotInSong = $Data['AllEffectsNotInSong'] ?>
                      @foreach($AllEffectsNotInSong as $FX)
                        <option value="<?php echo $FX->id; ?>"><?php echo ucwords(strtolower($FX->type)); ?></option>
                      @endforeach
                      <option value="new" id="newEffect">Add a new effect</option>
                  </select>
                  <br><input type="hidden" name="effect_type" id="effect_type" class="form-control">
                  <input type="hidden" name="song_id" value="<?php echo $Data['id']; ?>">
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary" form='add_effect'>Add</button>
            </div>
          </div>
        </div>
      </div> <!--modal-->

      <!--handel error: trying to add existing effect-->
      @if (\Session::has('fail'))

        <?php
        echo "<script type='text/javascript'>";
        echo "alert('".\Session::get('fail')."');";
        echo "</script>";
        ?>
      @endif
      @if (\Session::has('fail_fav'))

        <?php
        echo "<script type='text/javascript'>";
        echo "alert('".\Session::get('fail_fav')."');";
        echo "</script>";
        ?>
      @endif
      @if (\Session::has('succes'))

        <?php
        echo "<script type='text/javascript'>";
        echo "alert('".\Session::get('succes')."');";
        echo "</script>";
        ?>
      @endif
      @if (\Session::has('fail_vote'))

        <?php
        echo "<script type='text/javascript'>";
        echo "alert('".\Session::get('fail_vote')."');";
        echo "</script>";
        ?>
      @endif
      @if (\Session::has('fail_comm'))

        <?php
        echo "<script type='text/javascript'>";
        echo "alert('".\Session::get('fail_comm')."');";
        echo "</script>";
        ?>
      @endif
    </div>

    <div class="comments">
      <div class="row">
        <div class="col">
          <form class="form-group" id='post_comment' method="POST" action="{{ route('comment')}}">
            {{ csrf_field() }}
            <label for="comment">Comment:</label>
            <input type="hidden" name="song_id" value="{{$Data['id']}}">
            <textarea class="form-control" rows="5" columns="30" name="content"></textarea>
            <button class="btn btn-secondary mt-3" type="submit">Post Comment</button>
          </form>
        </div>
      </div>

      @foreach($Data['Comments'] as $Comment)
        <div class="row mb-4">
          <div class="card" style="min-width: 100%;">
        	     <div class="card-header">
                    {{$Comment->user_name}} | {{date('d-m-Y', strtotime($Comment->created_at))}}

                  </div>
        	    <div class="card-body">
        	        <div class="row">
                	    <div class="col-md-1">
                	        <img src="{{config('app.storage_url')}}{{$Comment->avatar}}" alt="could not find image" style="border-radius: 50%; height: 40px"/> <!--avatar-->
                	    </div>
                	    <div class="col-md-11">

                	        <p>{{$Comment->content}}</p>
                	    </div>
        	        </div>

        	    </div>
        	</div>
        </div>
      @endforeach

    </div>
  </div>



  <!--scripts-->

<script src="{{ asset('js/main.js') }}"></script>

@endsection
