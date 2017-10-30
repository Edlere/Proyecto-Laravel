<?php

namespace SIGE\Http\Controllers;

use Illuminate\Http\Request;
use SIGE\Curso;
use Illuminate\Support\Facades\Redirect;
use SIGE\Http\Requests\CursoFormRequest;
use DB;
use SIGE\User;
use SIGE\Http\Controllers\Controller;

class CursoController extends Controller
{
    public function __construct()
    {

    }
    public function index(Request $request)
    {
   		if($request)
   		{
   			$query=trim($request->get('searchText'));
   			$cursos=DB::table('curso')
            ->select('curso.idcurso','curso.nombre','curso.condicion')
   			->where('condicion','=','1')
   			->orderBy('curso.idcurso','asc')
   			->paginate(7);
   			return view('curso.index',["cursos"=>$cursos,"searchText"=>$query]);

   		}
        
   }
   public function create()
   {
      $grados=DB::table('curso')
      ->where('condicion','=','Activo')->get();
      return view("curso.create",["cursos"=>$cursos]);
  
   }
   public function store(CursoFormRequest $request)
   {
   	$curso= new Curso;
   	$curso->nombre=$request->get('nombre');
   	$curso->condicion='1';
   	$curso->save();
   	return Redirect('curso');

   }
   public function show($id)
   {
   	return view("curso.show",["curso"=>Curso::findOrFail($id)]);
   }
   public function edit($id)
   {
      $curso=Curso::findOrFail($id);
      $categorias=DB::table('categoria')->where('condicion','=','1')->get();
      return view("almacen.articulo.edit",["articulo"=>$articulo,"categorias"=>$categorias]);
   	return view("curso.edit",["curso"=>Curso::findOrFail($id)]);
   }
   public function update(CursoFormRequest $request,$id)
   {
   	$curso=Curso::findOrFail($id);
   	$curso->nombre=$request->get('nombre');
   	$curso->update();
   	return Redirect('curso');
   }
   public function destroy($id)
   {
   	$curso=Curso::findOrFail($id);
   	$curso->condicion='0';
   	$curso->update();
   	return Redirect('curso');
   }


}
