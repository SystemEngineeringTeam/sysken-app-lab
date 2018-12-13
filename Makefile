migrate/init:
	docker-compose exec app rake db:create

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

bundle/install:
	docker-compose exec app bundle install

run:
	docker-compose exec app rails s -b 0.0.0.0

