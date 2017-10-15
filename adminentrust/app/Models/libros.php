<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB as DB;

class libros extends Model
{
    protected $table = 'libro';
    public $primaryKey = 'idLibro';
    public static function Listar_Libros()
    {
    	return libros::select("libro.idLibro as idLibro","libro.nombreLibro as nombreLibro","libro.añoPublicacion as añoPublicacion")->get();
    }
    public static function Guardar_Libro($datos)
    {
    	try{
    		DB::beginTransaction();
    		$idAutor=DB::table('autor')->insertGetId([
    			'nombreAutor'=>$datos['nombreAutor'],
    			'pais'=>'Peru'
    		]);
    		DB::table('libro')->insert([
    			'nombreLibro'=>$datos['tituloLibro'],
    			'idAutor'=>$idAutor,
    			'idGenero'=>$datos['idGenero'],
    			'añoPublicacion'=>$datos['fecha'],
    			'idEditorial'=>$datos['idEditorial']
    		]);
    		DB::commit();
    		return true;
    	}catch(Exception $e){
    		DB::rollback();
    		return false;
    	}
    }
}
