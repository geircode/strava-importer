cd %~dp0

docker swarm init

docker-compose -f docker-compose.yml build --progress plain 
pause
