#!/bin/bash
source .env
sudo mkdir -p ${VOLUMES_DIR}/app/
sudo mkdir -p ${VOLUMES_DIR}/postgres/
sudo chown -R www-data:www-data ${VOLUMES_DIR}/app/
