@extends('adminlte::layouts.app')
@section('htmlheader_title')
Libros
@endsection
@section('css')
<style>
	.form-control
		{
			border-radius:4px;
		}
	.color-azul
		{
			color: #337ab7;
		}
	.help-block
		{
		color: red;
		}
</style>
@endsection
@section('script-inicio')
@endsection
@section('main-content')
<form method="POST" action="{{url('admin/Vender')}}" accept-charset="UTF-8" class="" id="RegistrarVenta">
	<input name="_token" type="hidden" value="{{ csrf_token() }}">
	<div class="form-group row">
		<div class="col-sm-4">
			<label class="color-azul">Titulo:</label>
			<input type="text" class="form-control text-center"  id="tituloLibro" name="tituloLibro"  required placeholder="Moby Dick" maxlength="20" value="">
		</div>
		<div class="col-sm-4">
			<label class="color-azul">Autor:</label>
			<input type="text" class="form-control text-center"  id="nombreAutor" name="nombreAutor"  required placeholder="Melville" maxlength="20" value="">
		</div>
		<div class="col-sm-4">
			<label class="color-azul">Fecha:</label>
			<input type="text" class="form-control text-center"  id="fecha" name="fecha"  required placeholder="1997-01-01" maxlength="20" value="">
		</div>
	</div>
	
	<div class="form-group row">
		<div class="col-sm-4">
			<label class="color-azul">Genero:</label>
			<select class="form-control text-center" name="idGenero" id="idGenero">
				@foreach($generos as $genero)
				<option selected value="{{$genero->idGenero}}" >{{$genero->nombreGenero}}</option>
				@endforeach
			</select>
		</div>
		<div class="col-sm-4">
			<label class="color-azul">Editorial:</label>
			<select class="form-control text-center" name="idEditorial" id="idEditorial">
				@foreach($editoriales as $editorial)
				<option selected value="{{$editorial->idEditorial}}" >{{$editorial->razonSocial}}</option>
				@endforeach
			</select>
		</div>
	</div>
	
	<div class="row">
		<div class="col-xs-12">
			<button type="submit" id="btnRegistraLibro" class="btn btn-block pull-left btn-success"><i class="fa fa-hand-o-right" aria-hidden="true"></i><span style="font-size:20px;">&nbsp;Publicar</span></button>
		</div>
	</div>
	<!--Falta el año de publicacion(Hacer con un Calendario)-->
</form>
@endsection