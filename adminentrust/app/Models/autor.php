<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class autor extends Model
{
    protected $table = 'autor';
    public $primarykey = 'idAutor';
    public  static function Listar_Autores()
    {
    	return autor::select("autor.idAutor as idAutor","autor.nombreAutor as nombreAutor")->get();
    }
}
