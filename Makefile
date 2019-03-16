EXEC=docker-compose exec

all: docker/start migrate/init migrate/up migrate/seed run ## docker start & migrate all & rails run
.PHONY: bundle/install
bundle/install: ## bundle install
	$(EXEC) app bundle install
.PHONY: run
run: ## rais run
	$(EXEC) app rails s -b 0.0.0.0
.PHONY: migrate/init
migrate/init: ## migrate database
	$(EXEC) app rake db:create
.PHONY: migrate/up
migrate/up: ## migrate up
	$(EXEC) app rake db:migrate
.PHONY: mirgate/seed
migrate/seed: ## migrate seed
	$(EXEC) app rake db:seed
.PHONY: migrate/status
migrate/status: ## migrate status
	$(EXEC) app rake db:migrate:status
.PHONY: migrate/down
migrate/down: ## migrate rollback
	$(EXEC) app rake db:rollback
.PHONY: docker/build
docker/build: ## docker build
	docker-compose build
.PHONY: docker/start
docker/start: ## docker start
	docker-compose up -d
.PHONY: docker/logs
docker/logs: ## docker logs
	docker-compose logs
.PHONY: docker/stop
docker/stop: ## docker stop
	docker-compose stop
.PHONY: docker/clean
docker/clean: ## docker clean
	docker-compose rm
.PHONY: app/bash
app/bash: ## app(rails) container bash
	$(EXEC) app bash
.PHONY: db/bash
db/bash: ## MySQL container bash
	$(EXEC) db bash
.PHONY: help
help: ## Display this help screen
	@grep -E '^[a-zA-Z/_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
