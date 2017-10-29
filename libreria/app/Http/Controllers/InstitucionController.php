<?php

namespace SIGE\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use SIGE\Alumno;
use Illuminate\Support\Facades\Input;
use SIGE\Http\Requests\AlumnoFormRequest;
use DB;

class InstitucionController extends Controller
{
     public function __construct()
    {

    }
    
    public function index()
   {
   		return view("institucion.index");
   }
   public function update( $request,$id)
   {
   	$alumno=Alumno::findOrFail($id);
   	$alumno->nombre=$request->get('nombre');
   	$alumno->fechanacimiento=$request->get('fechanacimiento');
   	$alumno->direccion=$request->get('direccion');
   	if(Input::hasFile('imagen')){
   		$file->Input::file('imagen');
   		$file->move(public_path().'/imagenes/alumnos/',$file->getClientOriginalName());
   		$alumno->imagen=$file->getClientOriginalName();
   	}	
      $alumno->estado='Activo';
      $alumno->nombreapoderado=$request->get('nombreapoderado');
      $alumno->telefonoapoderado=$request->get('telefonoapoderado');
      $alumno->telefonoemergencia=$request->get('telefonoemergencia');
      $alumno->descripcion=$request->get('descripcion');
   	$alumno->update();
   	return Redirect::to('alumno');
   }
}
