#!/bin/bash
source .env
mkdir -p ${DATA_DIR}/app/
mkdir -p ${DATA_DIR}/postgres/
sudo chown -R www-data:www-data ${DATA_DIR}/app/
