FROM php:8.3-fpm

# Instalamos dependencias
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libonig-dev libxml2-dev zip unzip curl git \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Instala Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Establece directorio de trabajo
WORKDIR /var/www

COPY . .

RUN composer install

# Da permisos adecuados
RUN chown -R www-data:www-data /var/www