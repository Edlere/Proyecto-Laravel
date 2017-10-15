@extends('adminlte::layouts.app')

@section('htmlheader_title')
	Libros
@endsection
@section('css')
<style>
	.color-azul {
	    color: #337ab7;
	}
	.content-wrapper
		{
    		background-color: #ffffff;
		}
	.fa-pencil-square
		{
			color: #00a65a;
		}
	.form-control
		{
			border-radius:4px;
		}
	.panel-primary 
		{
    		border-color: #00a65a;
		}
	.btn-primary 
		{
    		background-color: #00a65a;
    		border-color: #00a65a;
		}

</style>
@endsection

@section('script-inicio')
@endsection

@section('main-content')
@foreach($libros as $libro)
<div class="panel panel-default">
	<div class="panel-body">
		{{$libro->nombreLibro}}
	</br>
		Año de publicacion: {{$libro->añoPublicacion}}
	</br>
		<button type="button" class="btn btn-default">Agregar a carrito</button>
	</div>
</div>
@endforeach
@endsection