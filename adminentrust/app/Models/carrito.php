<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB as DB;

class carrito extends Model
{
	protected $table='carrito';
	public $primaryKey='idCarrito';

	public static function Listar_Libros()
    {
    	return libros::select("carrito.id as idCarrito")->get();
    }

	public static function Guardar_en_Carrito($datos)
	{
		try{
    		DB::beginTransaction();
    		DB::table('carrito')->insert([
    			'idLibros'=>$datos['idLibro']
    		]);
    		DB::commit();
    		return true;
    	}catch(Exception $e){
    		DB::rollback();
    		return false;
    	}
	}
}
