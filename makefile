.env:
	$(error .env is missing)

prod: .env
	@echo "Starting Production Server"
	docker-compose -f docker-compose.base.yml -f docker-compose.prod.yml up -d --force-recreate

stop: .env
	@echo "Starting Production Server"
	docker-compose -f docker-compose.base.yml -f docker-compose.prod.yml down

bootstrap: .env
	@echo "Starting everything except notify_push"
	docker-compose -f docker-compose.base.yml up -d --force-recreate --remove-orphans

database: .env
	@echo "Starging Database"
	docker-compose -f docker-compose.base.yml up -d --force-recreate database
