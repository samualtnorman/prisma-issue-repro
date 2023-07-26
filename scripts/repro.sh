#!/bin/sh
set -e
docker run --name gifted_yalow -p13805:3306 -d --restart unless-stopped --env MARIADB_ROOT_PASSWORD=uprooted-upstage-glob-swabs-railways mariadb:latest || echo "couldn't create container (going to assume it already exists)"
pnpm install
sleep 8 # waiting for container to start up
echo create database db | docker exec -i gifted_yalow mariadb -puprooted-upstage-glob-swabs-railways
pnpm prisma migrate dev
node .
