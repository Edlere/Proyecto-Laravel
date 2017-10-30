<?php

namespace SIGE\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use SIGE\Alumno;
use Illuminate\Support\Facades\Input;
use SIGE\Http\Requests\AlumnoFormRequest;
use DB;
use Requests;

class AlumnoController extends Controller
{
      public function __construct()
    {

    }
    
   public function list(Request $request)
   {
   		if($request)
   		{
   			$query=trim($request->get('searchText'));
   			$alumnos=DB::table('alumno as a')
   			->select('a.dni','a.nombre','a.fechanacimiento','a.direccion','a.estado','a.imagen','a.telefonoemergencia')
   			->where('a.nombre','LIKE','%'.$query.'%')
   			->orderBy('idalumno','asc')
   			->paginate(3); 
   			return view('alumno.list',["alumnos"=>$alumnos,"searchText"=>$query]);
   		}
   }
   public function create()
   {
   	return view("alumno.create");
   
   }
   public function agregar_nuevo_alumno(Request $request)
   {

      $data=$request->all();

      $alumno= new Alumno;
      $alumno->nombre=$data["nombre"];
      $alumno->dni=$data["dni"];
      $alumno->fechanacimiento=$data["fechanacimiento"];
      $alumno->direccion=$data["direccion"];
      $alumno->estado=$data["estado"];
      $alumno->imagen=$data["imagen"];
      $alumno->nombreapoderado=$data["nombreapoderado"];
      $alumno->telefonoapoderado=$data["telefonoapoderado"];
      $alumno->telefonoemergencia=$data["telefonoemergencia"];
      $alumno->descripcion=$data["descripcion"];

      $resul= $alumno->save();

      if($resul){
            
            return view("mensajes.msj_correcto")->with("msj","Alumno Registrado Correctamente");   
      }
      else
      {
             
             return view("mensajes.msj_rechazado")->with("msj","hubo un error vuelva a intentarlo");  

      }


   }
   public function store(AlumnoFormRequest $request)
   {
   	$alumno=new Alumno;
   	$alumno->nombre=$request->get('nombre');
      $alumno->dni=$request->get('dni');
   	$alumno->fechanacimiento=$request->get('fechanacimiento');
   	$alumno->direccion=$request->get('direccion');
      $alumno->estado='Activo';
   	if(Input::hasFile('imagen')){
   		$file->Input::file('imagen');
   		$file->move(public_path().'/imagenes/alumnos/',$file->getClientOriginalName());
   		$alumno->imagen=$file->getClientOriginalName();
   	}	
   	$alumno->nombreapoderado=$request->get('nombreapoderado');
      $alumno->telefonoapoderado=$request->get('telefonoapoderado');
      $alumno->telefonoemergencia=$request->get('telefonoemergencia');
      $alumno->descripcion=$request->get('descripcion');

   	$alumno->save();
   	return Redirect('alumno');

   }
   public function show($id)
   {
   	return view("alumno.show",["alumno"=>Alumno::findOrFail($id)]);
   }
   public function edit()
   {
      $alumnos=DB::table('alumno')
      ->where('estado','=','Activo')->get();
      return view("alumno.edit",["alumnos"=>$alumnos]);
   }
   public function detail($dni)
   {
      $detalles=Alumno::alumno($dni);

      return view("alumno.detail",compact('detalles'));

   }
   public function update(AlumnoFormRequest $request,$id)
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
   public function destroy($id)
   {
   	$alumno=Alumno::findOrFail($id);
   	$alumno->Estado='Inactivo';
   	$alumno->update();
   	return Redirect::to('alumno');
   }
}
