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

Route::get('/dokumentace', 'dokumentaceController@index');

Route::get('/dokumentace/download', function(){
    $file = public_path()."/dokumentaceSkoly.pdf";

    $headers = array(
        'Content-type: application/pdf',
    );

    return Response::download($file, "DokumentaceSkoly.pdf", $headers);
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
