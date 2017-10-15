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

</form>
@endsection