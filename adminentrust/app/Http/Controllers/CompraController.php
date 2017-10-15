<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CompraController extends Controller
{
    public function RegistrarCompra(){
    	return view('adminlte::views.librosCompra');
    }
}
