<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Skola;

class lokaceController extends Controller
{
    public function index()
    {
        $lokace = Skola::join('mesto', 'skola.mesto', '=', 'mesto.id_mesto')
        ->select('skola.*', 'mesto.nazev_mesta')
        ->get();

        return view('lokace.lokace', compact('lokace'));
    }
    
}
