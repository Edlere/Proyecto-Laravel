<?php

namespace SIGE\Http\Controllers;

use Illuminate\Http\Request;
use SIGE\Grado;
use Illuminate\Support\Facades\Redirect;
use SIGE\Http\Requests\CursoFormRequest;
use DB;
use SIGE\User;
use SIGE\Http\Controllers\Controller;

class GradoController extends Controller
{
     public function __construct()
    {

    }
    public function index(Request $request)
    {
   		if($request)
   		{
   			$query=trim($request->get('searchText'));
   			$grados=DB::table('grado')
        ->select('grado.idgrado','grado.nombre','grado.condicion')
        ->where('grado.nombre','LIKE','%'.$query.'%')
        ->where('grado.condicion','=','Activo')
   			->orderBy('idgrado','asc')
   			->paginate(3);
   			return view('grado.index',["grados"=>$grados,"searchText"=>$query]);
   		}      

   }
   public function create()
   {
      $grados=DB::table('grado')
      ->where('condicion','=','Activo')->get();
      return view("grado.create",["grados"=>$grados]);
   }
}
