<?php

namespace SIGE;

use Illuminate\Database\Eloquent\Model;

class Salon extends Model
{
    //
    protected $table='salon';
    protected $primaryKey='idsalon';
    public $timestamps=false;

    protected $fillable=[
    	'nombre',
    	'condicion'
    ];
     protected $guarded =[

    ];
}
