<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class mestaController extends Controller
{
    public function index()
    {
        $mesta = DB::table('mesto')->get();
        return view('mesta.mestaVypis', ['mesta' => $mesta]);
    }
}