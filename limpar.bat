@echo off
echo Parando todos os contêineres em execução...
docker stop %docker ps -aq%

echo Removendo todos os contêineres...
docker rm %docker ps -aq%

echo Removendo todas as imagens...
docker rmi %docker images -q%

echo Removendo todos os volumes...
docker volume rm %docker volume ls -q%

echo Removendo todas as redes não utilizadas...
docker network prune -f

echo Executando docker system prune para limpar tudo...
docker system prune -a --volumes -f

echo Limpeza completa do Docker realizada com sucesso!
pause
