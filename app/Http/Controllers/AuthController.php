<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\RegistroRequest;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    //

    public function register(RegistroRequest $request)
    {
        // validar el registro
        $data = $request->validated();       // usa las reglas de autenticación de RegistroRequest

        // crear al usuario
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']) 
        ]);

        // retorna una respuesta
        return [
            'token' => $user->createToken('token')->plainTextToken,
            'user' => $user
        ];

    }
    public function login(LoginRequest $request)
    {
        //validar el formulario
        $data = $request->validated();

        // revisar password
        if(!Auth::attempt($data)){
            return response([   // se retorna array porque en la vista se itera con un map
                'errors' => ['El email o contraseña son incorrectos']
            ], 422);
        }

        // autenticar
        $user = Auth::user();
        return [
            'token' => $user->createToken('token')->plainTextToken,
            'user' => $user
        ];
    }
    public function logout(Request $request)
    {
        $user = $request->user();
        $user->currentAccessToken()->delete();

        return [
            'user' => null
        ];
    }
}
