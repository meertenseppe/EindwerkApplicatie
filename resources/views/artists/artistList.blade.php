@extends('layouts.app') <!--basic app template-->

@section('head')
  <!--extra header content (bv. scripts, css links, ...)-->
  <link href="{{ asset('css/main.css') }}" rel="stylesheet">
  <title>Artists</title>
@endsection

@section('content')
  <!--main content-->
  <div class="container List">
    <div class="row">
      <div class="col-sm"><ul>
    <?php
    $Counter = 0;
    $FirstChar = 'initial'; //define an initial value != first letter of first name
    foreach ($ArtistList as $Artist) {
        $Counter += 1; //counter for columns
        if ($Counter > $Max) {
            echo '</ul></div>'; //close column
            echo '<div class="col-sm"><ul>'; //create new column
            $Counter = 0;
        }
        $ArtistName = ucwords(strtolower($Artist->artist_name)); //Artist name with first letter uppercase
        $NewFirstChar = $ArtistName[0]; //actual first letter of Artist name
        if ($FirstChar != $NewFirstChar) {
          $FirstChar = $NewFirstChar;
          echo '<li><h5>'.$FirstChar.'</h5></li>';
          echo '<hr>';
        }
        echo '<li><a href="'.route('Artists').'/'.$Artist->id.'">'.ucwords(strtolower($ArtistName)).'</a></li>';
      }

     ?>
      </ul></div> <!--column-->
    </div> <!--row-->


  </div> <!--container-->
@endsection
