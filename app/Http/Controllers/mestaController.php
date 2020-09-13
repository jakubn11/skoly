<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class mestaController extends Controller
{
    public function index()
    {
        $mesta = DB::table('mesto')
        ->paginate(15); 
        return view('mesta.mestaVypis', compact('mesta'));
    }
}