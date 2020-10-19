<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Skola;
use App\Mesto;

class skolyController extends Controller
{
    public function index()
    {
        $skolaPag = Skola::join('mesto', 'skola.mesto', '=', 'mesto.id_mesto')
        ->select('skola.*', 'mesto.nazev_mesta')
        ->orderBy('skola.nazev_skoly', 'asc')
        ->paginate(15);
        
        $skola = Skola::orderBy('nazev_skoly', 'asc')
        ->get();

        $mesto = Mesto::orderBy('nazev_mesta', 'asc')
        ->get();

        
        
        return view('skoly.skolyVypis', compact('skolaPag', 'skola', 'mesto'));
    }
}
