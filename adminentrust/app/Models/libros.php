<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class libros extends Model
{
    protected $table = 'libro';
    public $primaryKey = 'idLibro';
    public static function Listar_Libros()
    {
    	return libros::select("libro.idLibro as idLibro","libro.nombreLibro as nombreLibro","libro.añoPublicacion as añoPublicacion")->get();
    }
}
