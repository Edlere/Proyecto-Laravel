@extends('adminlte::layouts.app')

@section('htmlheader_title')
	Libros
@endsection
@section('css')
<style>
	.panel-primary 
		{
    		border-color: #00a65a;
		}
</style>
@endsection

@section('script-inicio')
@endsection

@section('main-content')
@foreach($libros as $libro)
<div class="panel panel-default" align="center">
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