# Laravel Quiosco

Aplicación tipo quiosco construida con Laravel para gestionar categorías, productos y pedidos. Este README describe las funcionalidades principales, requisitos, instalación, ejecución, estructura y cómo contribuir al proyecto.

## Funcionalidades
- Autenticación y autorización de usuarios (usuarios y administradores).
- Gestión de categorías: crear, editar, eliminar y listar categorías.
- Gestión de productos: CRUD de productos con asociación a categorías.
- Gestión de pedidos: crear pedidos desde interfaz, ver estado y detalles.
- Carrito y proceso de pedido para clientes.
- Endpoints API para integración con frontend o clientes móviles.
- Seeders para datos iniciales (categorías y productos).

## Requisitos
- PHP 8.1+ (según composer.json)
- Composer
- Node.js 16+ y npm/yarn
- Docker y Docker Compose (opcional pero recomendado)
- Extensiones PHP necesarias: pdo, mbstring, tokenizer, xml, ctype, json, openssl, fileinfo

## Instalación (rápida)

1. Clonar el repositorio:

```bash
git clone <repo-url>
cd laravel-quiosco
```

2. Copiar `.env` y generar clave de aplicación:

```bash
cp .env.example .env
composer install
php artisan key:generate
```

3. Instalar dependencias frontend:

```bash
npm install
```

4. Configurar la base de datos en `.env` (MySQL/Postgres).

5. Ejecutar migraciones y seeders:

```bash
php artisan migrate --seed
```

6. (Opcional) Si usas Docker Compose:

```bash
docker-compose up -d --build
# Luego dentro del container app:
docker compose exec app bash
composer install
php artisan migrate --seed
npm install
npm run dev
```

7. En desarrollo local sin Docker:

```bash
php artisan serve
npm run dev
```

## Comandos útiles
- Ejecutar tests: `php artisan test` o `vendor/bin/phpunit`
- Ejecutar linters o formateo (si aplica): revisar `package.json` y scripts.
- Generar archivos estáticos: `npm run build` / `npm run dev`

## Estructura principal del proyecto
- `app/Models` — Modelos Eloquent: `Categoria`, `Producto`, `Pedido`, `PedidoProducto`, `User`.
- `app/Http/Controllers` — Controladores HTTP para rutas web y API.
- `database/migrations` — Migraciones para tablas: usuarios, categorías, productos, pedidos, pedido_productos.
- `database/seeders` — Seeders: `CategoriaSeeder`, `ProductoSeeder`, `DatabaseSeeder`.
- `routes/web.php` — Rutas web (interfaz del quiosco).
- `routes/api.php` — Rutas API (endpoints JSON para el frontend).
- `resources/js` y `resources/css` — Activos frontend controlados por Vite.
- `public/` — Entrypoint público y assets compilados.

## Modelos y relaciones (resumen)
- `Categoria` tiene muchos `Producto`.
- `Producto` pertenece a una `Categoria`.
- `Pedido` tiene muchos `PedidoProducto`.
- `PedidoProducto` pivote entre `Pedido` y `Producto` con cantidad y precio.

## Migraciones y seeders
Las migraciones en `database/migrations` crean las tablas necesarias; los seeders (`database/seeders`) insertan categorías y productos de ejemplo para desarrollo.

Comandos:

```bash
php artisan migrate
php artisan db:seed
```

## Rutas y Endpoints relevantes
- Web (ejemplos):
  - `/` — Página principal del quiosco.
  - `/admin` — Panel administrativo (protegido).
- API (ejemplos):
  - `GET /api/productos` — Listar productos.
  - `GET /api/categorias` — Listar categorías.
  - `POST /api/pedidos` — Crear un pedido.
  - `GET /api/pedidos/{id}` — Ver detalle de un pedido.

Revisa `routes/web.php` y `routes/api.php` para la lista completa y controladores asociados.

## Ejecución en producción
- Configurar `.env` con variables de entorno apropiadas (DB, MAIL, APP_URL).
- Generar build frontend y optimizar la app:

```bash
npm run build
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

## Pruebas
- Ejecutar pruebas unitarias y de características con PHPUnit:

```bash
php artisan test
```

## Cómo contribuir
- Abrir un issue para discutir cambios grandes.
- Crear una rama con un nombre descriptivo: `feature/nombre` o `fix/nombre`.
- Hacer commits atómicos y claros.
- Enviar Pull Request con descripción y pasos para reproducir.

## Notas adicionales
- Revisa `composer.json` y `package.json` para dependencias y scripts disponibles.
- Si agregas nuevas columnas o modelos, crea la migración correspondiente y actualiza los seeders si es necesario.

## Contacto
Si necesitas ayuda adicional o quieres colaborar, abre un issue o contacta al mantenedor del repositorio.

---
Versión: documentación ampliada generada el 2025-12-30.
