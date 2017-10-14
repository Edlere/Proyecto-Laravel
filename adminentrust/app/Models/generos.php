<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class generos extends Model
{
    protected $table = 'generos';
    public $primaryKey = 'idGenero';
    public static function Listar_Generos()
    {
    	return generos::select("generos.idGenero as idGenero","generos.nombreGenero as nombreGenero")->get();
    }
}
