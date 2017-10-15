<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\libros;
use App\Models\carrito;

class CompraController extends Controller
{
    public function MostrarLibros(){
    	$libros = libros::Listar_Libros();
    	return view('adminlte::views.librosCompra',compact('libros'));
    }
    public function CargarCarrito(Request $request){
    	$datos=$request->all();
    	$resultado=carrito::Guardar_en_Carrito($datos);
    	if($resultado){
    		return redirect('admin/Compra');
    	}else{
    		return redirect('/');
    	}
    }

    public function RealizarCompra(){
        $libros = libros::Listar_Libros();
    	return view('adminlte::views.carritoCompra',compact('libros'));
    }
    public function GuardarCompra(){

    }
}
