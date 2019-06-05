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

    public function show()
    {
      /**
       * loads songs:list view
       * returns view : songs/songList with variables [list:{song_name, song_id}, list:{artist_name, artist_id}, songs_per_column ]
       */
      $SongList = Song::List();
      foreach ($SongList as $Song) {
        $artist_name = Artist:: getNameById($Song->artist_id)->first()->artist_name;
        $Song->setAttribute('artist_name', $artist_name);
      }
      $ArtistList = Artist::List();
      $Max = ceil(Song::count()/3);
    return view('songs/songList', ['SongList' => $SongList, 'ArtistList' => $ArtistList, 'Max' => $Max]);
    }

    public function showSong($id)
    {
      /**
       * loads song view from song_id
       * returs view : songs/song with variables
       * $Data =[song_name, artist_name, artist_id, song_effects:list:{effect_id, upvotes, downvotes, effect_id, user.vote},
       *           song_id, effects_not_in_song:list:{effect_type, effect_id, song_id},
       *            comments:list:{id, created_at, song_id, user_id, user_name, user_avatar, content}]
       */
      $Details = Song::DefineSong($id); //gets song_name and artist_id
        $SongName = $Details[0]->song_name;
        $artist_id = $Details[0]->artist_id;

      $ArtistName = Artist::getNameById($artist_id); //gets artist_name
        $ArtistName = $ArtistName[0]->artist_name;

      $SongEffects = SongEffect::getEffectBySongId($id); //gets effect_id, upvotes, downvotes and effect_id
        foreach ($SongEffects as $SFX) {
          $Type = Effect::getEffectById($SFX->effect_id);
          $SFX->setAttribute('type', $Type[0]->type);
          if (Auth::check()) {
            $vote = Vote::findVote($SFX->id); //gets users vote
            $SFX->setAttribute('vote', $vote);
          } else { //user isn't logged in
            $SFX->setAttribute('vote', -1); //vote = -1 indecates to the view that an effect hasn't been voted on by the user
          }
        }

      $AllEffectsNotInSong = SongEffect_Effect::effectsNotUsedBySong($id); //gets all effects not used by the song yet, so the user can select those when adding a song

      $Comments = Comment::commentsPerSong($id); //gets comments for song


      $Data =  ['SongName' => $SongName   //data to pass to view
          , 'ArtistName' => $ArtistName
          , 'ArtistId' => $artist_id
          , 'SongEffects' => $SongEffects
          , 'id' => $id
          , 'AllEffectsNotInSong' => $AllEffectsNotInSong
          , 'Comments' => $Comments
          ];
      return view('songs/song', ['Data' => $Data]);
    }

    public function addNewSong()
    {
      /**
       * adds new song to songs table
       * returns redirect : back (->with fail if the added artist or song allready exists in the database)
       */

      $Artist_id = $_POST['artist_id'];
      if ($Artist_id == 'new') { //user selected 'add a new artist'
        $Artist_name = ucwords(strtolower($_POST['new_artist']));
        if (Artist::checkIfExists($Artist_name)) //check if artist exists in database
        {
          return redirect()->back()->with('fail', 'The artist you tried to add allready exists in our database, try selecting it when adding the artist to the song.');

        } else { //create new artist record
          $Artist = new Artist;
          $Artist->artist_name = $Artist_name;
          $Artist->save();
          $Artist_id = $Artist->id; //replaces artist_id = 'new' with newly created artist_id
        }
      }

      $Song_name = ucwords(strtolower($_POST['song_name']));
      if (Song::checkIfExists($Song_name, $Artist_id)) //check if song-artist pair exists in database
      {
         return redirect()->back()->with('fail', 'The song you tried to add allready exists in our database.');
      } else {
        $Song = new Song; //new song meets all of the above requirements, add record to database
        $Song->artist_id = $Artist_id;
        $Song->song_name = $Song_name;
        $Song->save();
      }

      return redirect()->back();

    }

    public function postVote()
    {
      /**
       * adds, replaces or deletes the users vote from an effect, depending on if & how the user voted previously and how the user voted now.
       * returns redirect : back (->with fail if user isn't logged in)
       */
      if(Auth::check()) { //user needs to be logged in
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

        } else if ($currentVote != $voteRequest) {  //cant vote the same thing twice...
          $vote = Vote::findVoteFromDetails($song_effect_id, $user_id); //gets previous vote
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

    } //endfunction postVote()


}
