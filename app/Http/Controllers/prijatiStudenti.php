<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PocetPrijatych;
use App\Obor;
use App\Skola;

class prijatiStudenti extends Controller
{
    public function index()
    {
        $pocet = PocetPrijatych::join('obor', 'pocet_prijatych.obor', '=', 'obor.id_obor')
            ->join('skola', 'pocet_prijatych.skola', '=', 'skola.id_skola')
            ->select('pocet_prijatych.*', 'obor.nazev_oboru', 'skola.nazev_skoly')
            ->orderBy('nazev_skoly', 'asc')
            ->paginate(15);
        
        $obor = Obor::get();

        $skoly = Skola::orderBy('nazev_skoly', 'asc')
        ->get();
        
        return view('pocetPrijatych.pocetPrijatych', compact('pocet', 'obor', 'skoly'));
    }

    
    
}
