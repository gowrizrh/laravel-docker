# Laravel Docker

A docker compose setup for local development.

## Install new project

1. Run `setup.sh` to create a `.env` file
2. `docker compose run php create-project laravel/laravel .`
3. `docker compose up -d`
4. `docker compose exec php bash`
5. `php artisan show`

### Sample configuration

DB
```
DB_CONNECTION=pgsql
DB_HOST=db
DB_PORT=5432
DB_DATABASE=laravel
DB_USERNAME=laravel
DB_PASSWORD=laravel
```

Redis
```
REDIS_CLIENT=phpredis
REDIS_HOST=redis
REDIS_PASSWORD=null
REDIS_PORT=6379
```

Mail
```
MAIL_MAILER=smtp
MAIL_HOST=mail
MAIL_PORT=1025
```
