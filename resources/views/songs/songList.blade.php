@extends('layouts.app') <!--basic app template-->

@section('head')
  <!--extra header content (bv. scripts, css links, ...)-->
  <link href="{{ asset('css/main.css') }}" rel="stylesheet">
  <script src="{{ asset('js/main.js') }}"></script>

  <title>Songs</title>
@endsection

@section('content')
  <!--main content-->

  <div class="container"> <!--add song-->
    <div class="row">
      <div class="col pb-2">
        <div class="addNew">
          <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#newSongModal">Add New Song</button>
        </div>
      </div>
       <!--Modal-->
       <div class="modal fade" id="newSongModal" tabindex="-1" role="dialog" aria-labelledby="newSongModalTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="newSongModalLongTitle">Add New Song</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              </button>
            </div>
            <div class="modal-body">
              <form id='add_effect' method="POST" action="{{ route('addSongAction')}}"> <!--post artist_id song_name (artist_name) -->
                {{ csrf_field() }}
                <div class="form-group">
                  <label for="song_name" class="col-form-label">Song Name:</label>
                  <input type="text" name="song_name" value="" class="form-control"><br>
                  <select type="select" class="form-control" id="artist_id" name="artist_id" onchange="isNew('artist_id', 'new_artist')">
                      @foreach($ArtistList as $Artist)
                        <option value="<?php echo $Artist->id ?>"><?php echo ucwords(strtolower($Artist->artist_name)); ?></option>
                      @endforeach
                      <option value="new" id="newEffect">Add a new arist</option>
                  </select>
                  <br><input type="hidden" name="new_artist" id="new_artist" class="form-control" value="">
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

  </div>

  <div class="container List">
    <div class="row">
      <div class="col-sm"><ul>
    <?php
    $Counter = 0;
    $FirstChar = 'initial'; //define an initial value != first letter of first name
    foreach ($SongList as $Song) {
        $Counter += 1; //counter for columns
        if ($Counter > $Max) {
            echo '</ul></div>'; //close column
            echo '<div class="col-sm"><ul>'; //create new column
            $Counter = 0;
        }
        $SongName = ucwords(strtolower($Song->song_name)); //Song name with first letter uppercase
        $NewFirstChar = $SongName[0]; //actual first letter of song name
        if ($FirstChar != $NewFirstChar) {
          $FirstChar = $NewFirstChar;
          echo '<li><h5>'.$FirstChar.'</h5></li>';
          echo '<hr>';
        }
        echo '<li><a href="'.route('Songs').'/'.$Song->id.'">'.ucwords(strtolower($SongName)).'</a></li>';
      }

     ?>
      </ul></div> <!--column-->
    </div> <!--row-->
  </div> <!--container-->
@endsection
