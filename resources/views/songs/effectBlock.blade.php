@foreach($SongEffects as $SFX)
<div class="column sm">
  <?php
    $percentage_up = 100*($SFX->upvotes / ($SFX->upvotes + $SFX->downvotes)); //calculates the percentage of upvotes to color the effect block

    if ($SFX->vote == -1) {       //changes color of vote icon depending on the users vote
      $UpvoteColor = 'text-white';
      $DownvoteColor = 'text-white';
    } else if ($SFX->vote == 1) {
      $UpvoteColor = 'text-success';
      $DownvoteColor = 'text-white';
    } else if ($SFX->vote == 0) {
      $UpvoteColor = 'text-white';
      $DownvoteColor = 'text-danger';
    }

   ?>
   
  <div class="FXBlock" style="min-width: 180px; min-height: 150px; background: linear-gradient(180deg, #BFC678 <?php  echo $percentage_up?>%, #A6333A 0%); ">
    <div class="row">
      <div class="col interaction">
        <form action="{{route('vote')}}" method="post">
          {{ csrf_field() }}
          <input type="hidden" name="SFX_id" value="{{$SFX->id}}">
          <button class="vote btn btn-default" type="submit" name="voteRequest" value="1"><i class="material-icons {{$UpvoteColor}}" style="font-size: 50px;">arrow_drop_up</i></button>
        </form>
      </div>
    </div>
    <div class="row"><div class="col">
      <h3> <?php echo ucwords(strtolower($SFX->type)); ?> </h3>
    </div></div>
    <div class="row">
      <div class="col-sm-3 interaction">
        <form action="{{route('vote')}}" method="post">
          {{ csrf_field() }}
          <input type="hidden" name="SFX_id" value="{{$SFX->id}}">
          <button class="vote btn btn-default" type="submit" name="voteRequest" value="0"><i class="material-icons {{$DownvoteColor}}" style="font-size: 50px;">arrow_drop_down</i></button>
        </form>
      </div>
      <div class="col-sm-9">
        <span class="score pr-2">Score: <?php echo ($SFX->upvotes - $SFX->downvotes) ?></span>
      </div>
    </div>
  </div>
</div>

@endforeach
