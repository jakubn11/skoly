<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class pocetPrijatych extends Controller
{
    public function OA()
    {
        $pocet = DB::table('pocet_prijatych')
            ->join('obor', 'pocet_prijatych.obor', '=', 'obor.id')
            ->join('skola', 'pocet_prijatych.skola', '=', 'skola.id')
            ->select('pocet_prijatych.*', 'obor.nazev_oboru', 'skola.nazev_skoly')
            ->where('nazev_oboru', '=', 'OA')
            ->orderBy('nazev_skoly', 'asc')
            ->get();
        return view('pocetPrijatych.pocetOA', compact('pocet'));
    }

    public function IT()
    {
        $pocet = DB::table('pocet_prijatych')
            ->join('obor', 'pocet_prijatych.obor', '=', 'obor.id')
            ->join('skola', 'pocet_prijatych.skola', '=', 'skola.id')
            ->select('pocet_prijatych.*', 'obor.nazev_oboru', 'skola.nazev_skoly')
            ->where('nazev_oboru', '=', 'IT')
            ->orderBy('nazev_skoly', 'asc')
            ->get();
        return view('pocetPrijatych.pocetIT', compact('pocet'));
    }
    
}
