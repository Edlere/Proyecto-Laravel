<?php

namespace SIGE;

use Illuminate\Database\Eloquent\Model;

class Alumno extends Model
{
    protected $table='alumno';
    protected $primaryKey="idalumno";
    public $timestamps=false;

    public static function alumno($dni){

            return Alumno::select('alumno.idalumno',
                                   'alumno.nombre',
                                   'alumno.dni',
                                   'alumno.fechanacimiento',
                                   'alumno.direccion',
                                   'alumno.estado',
                                   'alumno.imagen',
                                   'alumno.nombreapoderado',
                                   'alumno.telefonoapoderado',
                                   'alumno.telefonoemergencia',
                                   'alumno.descripcion')
            ->where('alumno.dni',$dni)
            ->get();
    }

    
    protected $fillable=[
    	'nombre',
      'dni',
    	'fechanacimiento',
    	'direccion',
    	'estado',
    	'imagen',
      'nombreapoderado',
      'telefonoapoderado',
      'telefonoemergencia',
      'descripcion',
    ];
     protected $guarded =[

    ];
}
