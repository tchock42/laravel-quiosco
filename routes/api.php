<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\PedidoController;
use App\Http\Controllers\ProductoController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// todas las rutas se consulta como /api/user o /api/registro
Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::apiResource('/categorias', CategoriaController::class)->middleware('auth:sanctum');  // genera lsa rutas para las categorias
Route::apiResource('/productos', ProductoController::class)->middleware('auth:sanctum');    // habilita el las rutas de productos

// autenticación
Route::post('/registro', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('logout', [AuthController::class, 'logout'])->middleware('auth:sanctum'); // asegura que sea un usuario autenticado

// almacenar órdenes
Route::apiResource('/pedidos', PedidoController::class)->middleware('auth:sanctum');    // genera los metodos para el modelo Pedido