FROM php:8.3-fpm

# Instalamos dependencias
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libonig-dev libxml2-dev zip unzip curl git \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Instala Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Establece directorio de trabajo
WORKDIR /var/www

# copia los archivos de la aplicación
COPY . .

# --no-dev para el contenedor sea ligero
RUN composer install --no-interaction --optimize-autoloader --no-dev

# Da permisos adecuados para laravel
RUN chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache

# Render asigna un puerto dinámico mediante la variable $PORT.
# Usamos 'php artisan serve' para simplificar, ya que es una API.
CMD php artisan serve --host=0.0.0.0 --port=$PORT 