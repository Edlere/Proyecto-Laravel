<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableContiene extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contiene', function (Blueprint $table) {
            $table->unsignedInteger('idCompra');
            $table->foreign('idCompra')->references('idCompra')->on('compra');
            $table->unsignedInteger('idLibro');
            $table->foreign('idLibro')->references('idLibro')->on('libro');
            $table->integer('cantidad');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('contiene');
    }
}
