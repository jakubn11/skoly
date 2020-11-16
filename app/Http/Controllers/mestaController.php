<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mesto;

class mestaController extends Controller
{
    public function index()
    {
        $mesta = Mesto::paginate(15); 
        return view('mesta.mestaVypis', compact('mesta'));
    }
}