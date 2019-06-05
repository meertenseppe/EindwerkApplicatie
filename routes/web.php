<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/




Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes(['verify' => true]);

Route::get('/', function () {
    return view('welcome');
})->name('welcome');

Route::get('/login', function () {
    return view('auth/login');
})->name('login');

Route::get('/changePassword','ChangePasswordController@showChangePasswordForm')->name('changePasswordForm');
Route::post('/changePassword','ChangePasswordController@changePassword')->name('changePassword');


Route::post('/myAccountAction','MyAccountController@uploadPhoto')->name('UploadPhoto');

Route::post('/songEffectAction', 'SongEffectController@addEffect')->name('SongEffectAction');

Route::post('/addSongAction', 'SongsController@addNewSong')->name('addSongAction');

Route::post('/deleteFavoriteAction', 'FavoritesController@deleteFavorite')->name('deleteFavoriteAction');

Route::post('/addFavoriteAction', 'FavoritesController@addFavorite')->name('addFavoriteAction');

Route::post('/fxblockAction', 'SongsController@postVote')->name('vote');

Route::post('/commentAction', 'CommentsController@postComment')->name('comment');

Route::any('/search', 'SearchController@show')->name('Search');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/artists', 'ArtistsController@show')->name('Artists');

Route::get('/contact', 'ContactController@show')->name('Contact');

Route::get('/faq', 'FaqController@show')->name('FAQ');

Route::get('/favorites', 'FavoritesController@show')->name('Favorites');

Route::get('/myAccount', 'MyAccountController@show')->name('MyAccount');

Route::get('/songs', 'SongsController@show')->name('Songs');

Route::get('/songs/{id}', 'SongsController@showSong')->name('Song');

Route::get('/artists/{id}', 'ArtistsController@showSongs')->name('Artist');
