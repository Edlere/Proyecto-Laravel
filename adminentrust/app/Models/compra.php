<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class compra extends Model
{
    protected $table ='compra';
    public $primarykey = 'idCompra';
    public static function Lista_Compras()
    {
    	return compra::select("compra.idCompra as idCompra")->get();
    }
}
