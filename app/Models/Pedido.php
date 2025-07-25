<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    public function user()              // relaciona el pedido con el usuario relacionado | relacion de muchos a uno
    {
        return $this->belongsTo(User::class);
    }

    public function productos()         // relaciona el pedido con los productos que tiene | relacion de muchos a mucho
    {
        return $this->belongsToMany(Producto::class, 'pedido_productos')->withPivot('cantidad');
    }
}
