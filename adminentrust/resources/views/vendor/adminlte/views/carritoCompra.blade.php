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
<form method="POST" action="{{url('admin/Carrito')}}" accept-charset="UTF-8" class="" id="GuardarCarrito">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Nombre Libro</th>
			</tr>
		</thead>
		<tbody>
			@foreach($libros as $libro)
			<tr>
				<td>{{$libro->nombreLibro}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
	<div class="row">
		<div class="col-xs-12">
			<button type="submit" id="btnGuardarCarrito" class="btn btn-block pull-left btn-success"><i class="fa fa-btc" aria-hidden="true"></i><span style="font-size:20px;">&nbsp;Comprar</span> <i class="fa fa-btc" aria-hidden="true"></i></button>
		</div>
	</div>
</form>
@endsection