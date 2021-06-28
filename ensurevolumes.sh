#!/bin/bash
source .env
mkdir -p ${VOLUMES_DIR}/app/
mkdir -p ${VOLUMES_DIR}/postgres/
sudo chown -R www-data:www-data ${VOLUMES_DIR}/app/
