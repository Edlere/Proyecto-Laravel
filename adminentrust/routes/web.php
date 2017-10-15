<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => 'auth'], function () {
    Route::get('admin/Compra',['as'=>'admin/Compra', 'uses'=>'CompraController@RegistrarCompra']);
    Route::get('admin/Vender',['as'=>'admin/Vender', 'uses'=>'VentaController@RegistrarVenta']);
    Route::post('admin/Vender',['as'=>'admin/Vender', 'uses'=>'VentaController@GuardarVenta']);
});
