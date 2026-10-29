#!/bin/sh
git pull
yes | cp -i docker-compose.yml ../mwmbl
cd ../mwmbl
docker compose down
docker compose up -d
cd ../mwmbl-xa11-config
