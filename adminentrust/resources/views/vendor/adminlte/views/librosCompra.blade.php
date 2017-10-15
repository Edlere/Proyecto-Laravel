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
<form method="POST" action="{{url('admin/Compra')}}" accept-charset="UTF-8" class="" id="AgregarCarrito">
	<input name="_token" type="hidden" value="{{ csrf_token() }}">
	@foreach($libros as $libro)
	<div class="panel panel-default" align="center">
		<div class="panel-body">
			{{$libro->nombreLibro}}
			<input type="hidden" class="form-control text-center"
			id="idLibro" name="idLibro" value="{{$libro->idLibro}}">
			</br>
			Año de publicacion: {{$libro->añoPublicacion}}
			</br>
			<div class="row">
				<div class="col-xs-12">
					<button type="submit" id="btnAgregarCarrito" class="btn btn-success">Agregar Carrito</button>
				</div>
			</div>
		</div>
	</div>
	@endforeach
</form>
@endsection