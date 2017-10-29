<?php

namespace SIGE\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use SIGE\Alumno;
use Illuminate\Support\Facades\Input;
use SIGE\Http\Requests\AlumnoFormRequest;
use DB;

class DocenteController extends Controller
{
      public function __construct()
    {

    }
    
     public function create_nuevo_docente()
    {
   	  return view("docente.create");
   
    }
    public function lista_docentes(Request $request)
   {
   		if($request)
   		{
   			$query=trim($request->get('searchText'));
   			$docentes=DB::table('docente')
   			->join('curso','curso.idcurso','=','docente.iddocente')
   			->join('salon','salon.idsalon','=','docente.iddocente')
   			->join('grado','grado.idgrado','=','docente.iddocente')
   			->select('docente.dni','docente.nombre','docente.especialidad','salon.nombre as salon','grado.nombre as grado','curso.nombre as curso','docente.direccion','docente.estado','docente.edad','docente.imagen','docente.telefono','docente.celular','docente.email')
   			->where('docente.nombre','LIKE','%'.$query.'%')
   			->orderBy('iddocente','asc')
   			->paginate(4);
   			return view('docente.list',["docentes"=>$docentes,"searchText"=>$query]);
   	
   		}
   		
   }

}
