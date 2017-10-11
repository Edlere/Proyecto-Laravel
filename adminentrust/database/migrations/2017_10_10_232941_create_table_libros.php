<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableLibros extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('libro', function (Blueprint $table) {
            $table->increments('idLibro');
            $table->string('nombreLibro',15);
            $table->unsignedInteger('idAutor');
            $table->foreign('idAutor')->references('idAutor')->on('autor');
            $table->unsignedInteger('idGenero');
            $table->foreign('idGenero')->references('idGenero')->on('generos');
            $table->date('añoPublicacion');
            $table->unsignedInteger('idEditorial');
            $table->foreign('idEditorial')->references('idEditorial')->on('editorial');
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
        Schema::dropIfExists('libro');
    }
}
