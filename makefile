# Launch Targets:

launch: .env check-traefik check-ldap
	@echo "Starting Nextcloud"
	./ensurevolumes.sh
	docker-compose -f docker-compose.yml up -d --force-recreate --remove-orphans

database: .env
	@echo "Starging Database"
	./ensurevolumes.sh
	docker-compose -f docker-compose.yml up -d --force-recreate db

# Helepers:

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
