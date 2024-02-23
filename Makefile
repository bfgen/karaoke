run:
	docker compose up


composer_install:
	docker compose exec back composer install

back:
	docker compose exec back bash


clear_all_cache:
	docker compose exec back php artisan optimize:clear

migrate:
	docker compose exec back php artisan migrate


tinker:
	docker compose exec back php artisan tinker

routes:
	docker compose exec back php artisan route:list



status:
	docker compose ps

stop:
	docker compose stop

clean:
	docker compose down
