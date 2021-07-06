cd %~dp0

docker-compose -f docker-compose.yml pull --no-parallel
docker-compose -f docker-compose.yml build --progress plain 

docker-compose -f docker-compose.yml push