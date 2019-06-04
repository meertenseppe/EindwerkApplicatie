@extends('layouts.app') <!--basic app template-->

@section('head')
  <!--extra header content (bv. scripts, css links, ...)-->
  <link href="{{ asset('css/main.css') }}" rel="stylesheet">
  <title>Favorites</title>
@endsection

@section('content')
  <!--main content-->
  <div class="container List">
    <div class="row">
      <h1>Favorites</h1>
    </div>
    <div class="row">
      <div class="col-sm"><ul>
      <?php
      $Counter = 0;
      $FirstChar = 'initial'; //define an initial value != first letter of first name
      foreach ($ReturnList  as $Song) {
          $Counter += 1; //counter for columns
          if ($Counter > $Max) {
              echo '</ul></div>'; //close column
              echo '<div class="col-sm"><ul>'; //create new column
              $Counter = 0;
          }
          $SongName = ucwords(strtolower($Song->song_name)); //Song name with first letter uppercase
          $ArtistName = ucwords(strtolower($Song->artist_name));
          $NewFirstChar = $SongName[0]; //actual first letter of song name
          if ($FirstChar != $NewFirstChar) {
            $FirstChar = $NewFirstChar;
            echo '<li><h5>'.$FirstChar.'</h5></li>';
            echo '<hr>';
          }
          ?>
          <li>
            <form action="{{route('deleteFavoriteAction')}}" method="post">
              {{ csrf_field() }}
              <input type="hidden" name="delete_id" value="{{$Song->song_id}}">
              <button type="submit" name="delete" class="btn btn-default"> <i class="material-icons">delete</i>  </button>
              <a href="{{route('Songs').'/'.$Song->song_id}}"> {{ucwords(strtolower($SongName))}}</a> - <a href="{{route('Artists').'/'.$Song->artist_id}}">{{ucwords(strtolower($ArtistName))}}</a>
            </form>

          </li>
          <?php
        }
       ?>
     </ul></div> <!--column-->
   </div> <!--row-->
  </div> <!--container-->

@endsection
