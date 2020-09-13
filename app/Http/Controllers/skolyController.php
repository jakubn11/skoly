<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class skolyController extends Controller
{
    public function index()
    {
        $skola = DB::table('skola')
        ->join('mesto', 'skola.mesto', '=', 'mesto.id')
        ->select('skola.*', 'mesto.nazev_mesta')
        ->orderBy('skola.nazev_skoly', 'asc')
        ->paginate(15);
        
        return view('skoly.skolyVypis', compact('skola'));
    }
}
