<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class libros extends Model
{
    protected $table = 'libro';
    public $primarykey = 'idLibro';
    public static function Listar_Libros()
    {
    	return libro::select("libro.idLibro as idLibro","libro.nombreLibro as nombreLibro")->get();
    }
}
