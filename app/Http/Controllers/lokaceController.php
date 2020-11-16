<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Skola;

class lokaceController extends Controller
{
    public function index()
    {
        $lokace = Skola::join('mesto', 'skola.mesto', '=', 'mesto.id_mesto')
        ->join('pocet_prijatych', 'pocet_prijatych.skola', '=', 'skola.id_skola')
        ->select('skola.*', 'mesto.nazev_mesta', 'pocet_prijatych.pocet')
        ->get();

        return view('lokace.lokace', compact('lokace'));
    }
    
}
