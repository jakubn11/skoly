<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/skoly', 'skolyController@index');

Route::get('/mesta', 'mestaController@index');

Route::get('/pocetPrijatych', 'prijatiStudenti@index');

Route::get('/', 'lokaceController@index');

Route::get('/zpetnaVazba', 'zpetnaVazba@index');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
