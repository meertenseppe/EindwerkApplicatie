<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use App\Song as Song;
use App\Artist as Artist;
use App\SongEffect as SongEffect;
use App\Effect as Effect;
use App\SongEffect_Effect as SongEffect_Effect;
use App\Vote as Vote;
use Auth;
use App\Comment;


class SongsController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @return View
     */
    public function show()
    {
      $SongList = Song::List();
      $ArtistList = Artist::List();
      $Max = ceil(Song::count()/4);
    return view('songs/songList', ['SongList' => $SongList, 'ArtistList' => $ArtistList, 'Max' => $Max]);
    }

    public function showSong($id) {
      $Details = Song::DefineSong($id);
      $SongName = $Details[0]->song_name;
      $artist_id = $Details[0]->artist_id;
      $ArtistName = Artist::getNameById($artist_id);
      $ArtistName = $ArtistName[0]->artist_name;
      $SongEffects = SongEffect::getEffectBySongId($id);
      foreach ($SongEffects as $SFX) {
        $Type = Effect::getEffectById($SFX->effect_id);
        $SFX->setAttribute('type', $Type[0]->type);
        if (Auth::check()) {
          $vote = Vote::findVote($SFX->id);
          $SFX->setAttribute('vote', $vote);
        } else {
          $SFX->setAttribute('vote', -1);
        }
      }
      $AllEffectsNotInSong = SongEffect_Effect::effectsNotUsedBySong($id);
      $Comments = Comment::commentsPerSong($id);
      

      $Data =  ['SongName' => $SongName   //data to pass to view
          , 'ArtistName' => $ArtistName
          , 'SongEffects' => $SongEffects
          , 'id' => $id
          , 'AllEffectsNotInSong' => $AllEffectsNotInSong
          , 'Comments' => $Comments
          ];
      return view('songs/song', ['Data' => $Data]);
    }

    public function addNewSong()
    {
      $Song = new Song;
      $Song_name = ucwords(strtolower($_POST['song_name']));
      $Song->song_name = $Song_name;
      $Artist_id = $_POST['artist_id'];

      if ($Artist_id == 'new') {
        $Artist_name = ucwords(strtolower($_POST['new_artist']));
        if (Artist::checkIfExists($Artist_name))
        {
          return redirect()->back()->with('fail', 'The artist you tried to add allready exists in our database, try selecting it when adding the artist to the song.');

        } else {
          $Artist = new Artist;
          $Artist->artist_name = $Artist_name;
          $Artist->save();
          $Artist_id = $Artist->id;
        }
      }

      $Song->artist_id = $Artist_id;
      if (Song::checkIfExists($Song_name, $Artist_id))
      {
         return redirect()->back()->with('fail', 'The song you tried to add allready exists in our database.');
      } else {
        $Song->save();
      }

      return redirect(route("Song", $Song->id));

    }

    public function postVote()
    {
      if(Auth::check()) {
        $user_id = Auth()->user()->id;
        $voteRequest = $_POST['voteRequest'];
        $song_effect_id = $_POST['SFX_id'];
        $currentVote = Vote::findVote($song_effect_id); //return -1 if not voted yet, 1 or 0 if previously voted
        if ($currentVote == -1) { //first time the user votes on this effect
            $vote = new Vote;
            $vote->song_effect_id = $song_effect_id;
            $vote->user_id = $user_id;
            $vote->vote = $voteRequest;
            $vote->save();

            $song_effect = SongEffect::find($song_effect_id);
            if ($voteRequest == 1) { //upvote
              $song_effect->upvotes += 1;
            } else { //downvote
              $song_effect->downvotes += 1;
            }
            $song_effect->save();

        } else if ($currentVote != $voteRequest) {           //cant vote the same thing twice...
          $vote = Vote::findVoteFromDetails($song_effect_id, $user_id);
          $vote->vote = $voteRequest;
          $vote->save();

          $song_effect = SongEffect::find($song_effect_id);
          if ($voteRequest == 1) { //previously voted down, wants to vote up
            $song_effect->upvotes += 1;
            $song_effect->downvotes -= 1;
          } else {  //previously voted up, wants to vote down
            $song_effect->upvotes -= 1;
            $song_effect->downvotes += 1;
          }
          $song_effect->save();

        } else { //previously voted, but isnt sure he voted correctly (= cancel vote)

          $vote = Vote::findVoteFromDetails($song_effect_id, $user_id);
          $vote->vote = $voteRequest;
          $vote->delete();

          $song_effect = SongEffect::find($song_effect_id);
          if ($voteRequest == 1) { //previously voted down, wants to vote up
            $song_effect->upvotes -= 1;
          } else {  //previously voted up, wants to vote down
            $song_effect->downvotes -= 1;
          }
          $song_effect->save();
        }

      return redirect()->back(); //succesfully voted

      } else { //not logged in
        return redirect()->back()->with('fail_vote', 'Please login before voting.');

      }

    }


}
