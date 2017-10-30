<?php

namespace SIGE\Http\Controllers;

use Illuminate\Http\Request;
use SIGE\Salon;
use Illuminate\Support\Facades\Redirect;
use SIGE\Http\Requests\CursoFormRequest;
use DB;
use SIGE\User;
use SIGE\Http\Controllers\Controller;

class SalonController extends Controller
{
     public function __construct()
    {

    }
    public function index(Request $request)
    {
   		if($request)
   		{
   			$query=trim($request->get('searchText'));
   			$salones=DB::table('salon')
            ->join('grado','grado.idgrado','=','salon.idsalon')
            ->select('salon.idsalon','salon.nombre','grado.nombre as grado','salon.condicion')
            ->where('salon.nombre','LIKE','%'.$query.'%')
            ->where('salon.condicion','=','Activo')
   			->orderBy('idsalon','asc')
   			->paginate(3);
   			return view('salon.index',["salones"=>$salones,"searchText"=>$query]);
   		}      

   }
   public function create()
   {
      $grados=DB::table('grado')
      ->where('condicion','=','Activo')->get();
      return view("salon.create",["grados"=>$grados]);


   	return view("curso.create");

   }
   public function store(CursoFormRequest $request)
   {
   	$salon = new Salon;
   	$salon->nombre=$request->get('nombre');
   	$salon->condicion='Activo';
   	$salon->save();
   	return Redirect('salon');

   }
   public function show($id)
   {
   	
   	return view("salon.show",["salon"=>Salon::findOrFail($id)]);
   }
   public function edit($id)
   {
   	return view("salon.edit",["salon"=>Salon::findOrFail($id)]);
   }
   public function update(SalonFormRequest $request,$id)
   {
   	$salon=Salon::findOrFail($id);
   	$salon->nombre=$request->get('nombre');
   	$salon->update();
   	return Redirect('salon');
   }
   public function destroy($id)
   {
   	$salon=Salon::findOrFail($id);
   	$salon->condicion='Inactivo';
   	$salon->update();
   	return Redirect('salon');
   }


}
