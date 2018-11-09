DBNAME:=sysken_rails

migrate/init:
	mysql -u root -h localhost --protocol tcp -e "create database \`$(DBNAME)\`" -p

migrate/up:
	docker-compose exec app rake db:migrate

migrate/down:
	docker-compose exec app rake db:rollback

migrate/status:
	docker-compose exec app rake db:migrate:status

migrate/seed:
	docker-compose exec app rake db:seed

docker/build:
	docker-compose build

docker/start:
	docker-compose up -d

docker/logs:
	docker-compose logs

docker/stop:
	docker-compose stop

docker/clean:
	docker-compose rm

app/bash:
	docker-compose exec app bash

db/bash:
	docker-compose exec db bash
