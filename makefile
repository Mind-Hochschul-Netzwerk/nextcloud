check-traefik:
ifeq (,$(shell docker ps -f name=^traefik$$ -q))
	$(error docker container traefik is not running)
endif

check-ldap:
ifeq (,$(shell docker ps -f name=^ldap$$ -q))
	$(error docker container ldap is not running)
endif

.env:
	$(error .env is missing)

prod: .env check-traefik check-ldap
	@echo "Starting Production Server"
	./ensurevolumes.sh
	docker-compose -f docker-compose.base.yml -f docker-compose.prod.yml up -d --force-recreate

bootstrap: .env check-traefik check-ldap
	@echo "Starting everything except notify_push"
	./ensurevolumes.sh
	docker-compose -f docker-compose.base.yml up -d --force-recreate --remove-orphans

database: .env
	@echo "Starging Database"
	./ensurevolumes.sh
	docker-compose -f docker-compose.base.yml up -d --force-recreate database
