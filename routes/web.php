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

Route::get('/', 'skolyController@index');

Route::get('/mesta', 'mestaController@index');

Route::get('/pocetPrijatychIT', 'pocetPrijatych@IT');

Route::get('/pocetPrijatychOA', 'pocetPrijatych@OA');

Route::get('/home', function () {
    return view('home.home');
});
