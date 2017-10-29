<?php

namespace SIGE;

use Illuminate\Database\Eloquent\Model;

class Curso extends Model
{
    protected $table='curso';
    protected $primaryKey='idcurso';
    public $timestamps=false;

    protected $fillable=[
    	'nombre',
    	'condicion'
    ];
     protected $guarded =[

    ];
}
