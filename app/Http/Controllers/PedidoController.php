<?php

namespace App\Http\Controllers;

use App\Http\Resources\PedidoCollection;
use App\Models\Pedido;
use App\Models\PedidoProducto;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PedidoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return new PedidoCollection(Pedido::with('user')->with('productos')->where('estado', 0)->get());   
        // ejecuta una consulta en vez de 3 con la información del pedido, el usuario y los productos usando las relaciones en Pedido.php
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $pedido = new Pedido;
        $pedido->user_id = Auth::user()->id;    // extrae de la instancia de user el id
        $pedido->total = $request->total;       // extrae de la petición de axios el total
        $pedido->save();                        // guarda en la db


        //obtener el id del pedido
        $id = $pedido->id;

        // Obtener los productos del pedido
        $productos = $request->productos;       // se tiene un arreglo indexado [['id' => 1, 'candidad' => 2], ['id' => 2, 'cantidad' => 5] ]

        // Formatear el arreglo
        $pedido_producto= [];
        foreach($productos as $producto){
            $pedido_producto[] = [              // almacena en un array indexado cada producto del pedido, se va almacenando al final del arreglo
                'pedido_id' => $id,             // como [['pedido_id' => 1, 'producto_id' =>1, 'cantidad' => 2, 'created_at' => 22/07/2025, 'updatedAt'=> 22/07/2025], [], []]
                'producto_id' => $producto['id'],
                'cantidad' => $producto['cantidad'],
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
        }

        // almacenar en la DB
        PedidoProducto::insert($pedido_producto);

        return [
            'message' => 'Pedido realizado, espera unos minutos por favor',
            // 'productos' => $request->productos
        ];
    }

    /**
     * Display the specified resource.
     */
    public function show(Pedido $pedido)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pedido $pedido)
    {
        $pedido->estado = 1;
        $pedido->save();

        return [
            'pedido' => $pedido
        ];
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pedido $pedido)
    {
        //
    }
}
