<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PocetPrijatych;
use App\Obor;

class prijatiStudenti extends Controller
{
    public function index()
    {
        $pocet = PocetPrijatych::join('obor', 'pocet_prijatych.obor', '=', 'obor.id')
            ->join('skola', 'pocet_prijatych.skola', '=', 'skola.id')
            ->select('pocet_prijatych.*', 'obor.nazev_oboru', 'skola.nazev_skoly')
            ->orderBy('nazev_skoly', 'asc')
            ->paginate(10);
        $obor = Obor::get();
        return view('pocetPrijatych.pocetPrijatych', compact('pocet', 'obor'));
    }

    
    
}
