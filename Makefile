include .env

launch: check-traefik check-ldap
	@echo "Starting Nextcloud"
	docker compose up -d --force-recreate --remove-orphans app

database:
	@echo "Starting Database"
	docker compose up -d --force-recreate db

# Helpers:

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
