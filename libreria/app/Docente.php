<?php

namespace SIGE;

use Illuminate\Database\Eloquent\Model;

class Docente extends Model
{
    protected $table='docente';
    protected $primaryKey="iddocente";
    public $timestamps=false;

    protected $fillable=[
    	'dni',
        'nombre',
    	'direccion',
    	'estado',
    	'especialidad',
        'edad',
        'estado',
        'imagen',
        'telefono',
        'celular',
        'email'
    ];

}
