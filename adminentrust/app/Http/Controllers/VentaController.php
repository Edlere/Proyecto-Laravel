<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\generos;
use App\Models\editorial;
use App\Models\libros;
use Illuminate\Support\Facades\Auth as Auth;

class VentaController extends Controller
{
    public function RegistrarVenta(){
    	$generos=generos::Listar_Generos();
    	$editoriales=editorial::Listar_Editoriales();
    	return view('adminlte::views.librosVenta',compact('generos','editoriales'));
    }

    public function GuardarVenta(Request $request){
    	$datos=$request->all();
    	$resultado=libros::Guardar_Libro($datos);
    	if($resultado){
    		return redirect('admin/Vender');
    	}else{
    		return redirect('/');
    	}
    }
}
