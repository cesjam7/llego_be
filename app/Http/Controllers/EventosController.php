<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Evento;

class EventosController extends Controller
{
    function listar() {
        $eventos = Evento::get();
        return json_encode($eventos);
    }
    function registrar(Request $request) {
        $datos = $request->all();
        Evento::create($datos);
        return 'Se registro correctamente';
    }
}