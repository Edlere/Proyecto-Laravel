<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\libros;

class CompraController extends Controller
{
    public function MostrarLibros(){
    	$libros = libros::Listar_Libros();
    	return view('adminlte::views.librosCompra',compact('libros'));
    }
    public function RealizarCompra(){
    	return view('adminlte::views.carritoCompra');
    }
    public function GuardarCompra(){

    }
}
