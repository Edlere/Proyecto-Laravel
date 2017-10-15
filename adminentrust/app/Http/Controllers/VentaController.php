<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth as Auth;

class VentaController extends Controller
{
    public function RegistrarVenta(){
    	return view('adminlte::views.librosVenta');
    }
}
