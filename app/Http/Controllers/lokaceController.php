<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class lokaceController extends Controller
{
    public function index()
    {
        $lokace = DB::table('skola')->get();

        return view('lokace.lokace', compact('lokace'));
    }
    
}
