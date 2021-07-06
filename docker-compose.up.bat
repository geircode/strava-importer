cd %~dp0

docker swarm init

docker rm -f strava-importer-1

docker-compose -f docker-compose.yml down --remove-orphans

docker network create -d overlay --attachable strava_importer_network

@REM docker-compose -f docker-compose.yml build --no-cache strava-importer

docker-compose -f docker-compose.yml build --progress plain 

docker-compose -f docker-compose.yml pull --no-parallel

docker-compose -f docker-compose.yml up -d --remove-orphans
REM wait for 1-2 seconds for the container to start
pause
docker exec -it strava-importer-1 /bin/bash