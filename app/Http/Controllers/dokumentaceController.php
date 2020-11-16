<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class dokumentaceController extends Controller
{
    public function index()
    {
        return view('download.download');
    }
}
