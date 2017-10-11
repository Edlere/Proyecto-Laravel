<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class editorial extends Model
{
    protected $table = 'editorial';
	public $primarykey = 'idEditorial';
    public static function Listar_Editoriales()
    {
    	return editorial::select("editorial.idEditorial as idEditorial","editorial.razonSocial as razonSocial")->get();
    }
}
