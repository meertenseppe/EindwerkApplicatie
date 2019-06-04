@extends('layouts.app') <!--basic app template-->

@section('head')
  <!--extra header content (bv. scripts, css links, ...)-->
  <link href="{{ asset('css/main.css') }}" rel="stylesheet">
  <title><?php ucwords(strtolower($ArtistName)) ?></title>
@endsection

@section('content')
  <!--main content-->
  <div class="container List">
    <div class="row">
        <h1><?php echo ucwords(strtolower($ArtistName)); ?></h1>
    </div>
    <div class="row">
      <div class="col-sm"><ul>
    <?php
    $Counter = 0;
    $FirstChar = 'initial'; //define an initial value != first letter of first name
    foreach ($SongList as $Song) {
        $Counter += 1; //counter for columns
        if ($Counter > $Max && $Counter>6) {
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
        echo '<li><a href="'.route('Songs').'/'.$Song->id.'">'.$SongName.'</a></li>';
      }

     ?>
      </ul></div> <!--column-->
    </div> <!--row-->
  </div> <!--container-->
@endsection
