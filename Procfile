web: vendor/bin/heroku-php-apache2 public/
worker: php artisan queue:restart && php artisan queue:work --tries=3
release: php artisan migrate:refresh --force && php artisan db:seed
