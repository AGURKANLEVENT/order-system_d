FROM php:8.2-fpm

# Gerekli paketleri yükle
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    unzip \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libwebp-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    curl && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip opcache

# Çalışma dizini
WORKDIR /var/www/html

# Mevcut uygulama dizinini kopyala
COPY . /var/www/html

# PHP FPM başlat
CMD ["php-fpm"]

# Portu aç
EXPOSE 9000