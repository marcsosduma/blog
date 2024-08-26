#!/bin/bash

# Parar todos os contêineres em execução
echo "Parando todos os contêineres em execução..."
docker stop $(docker ps -aq)

# Remover todos os contêineres
echo "Removendo todos os contêineres..."
docker rm $(docker ps -aq)

# Remover todas as imagens
echo "Removendo todas as imagens..."
docker rmi $(docker images -q)

# Remover todos os volumes
echo "Removendo todos os volumes..."
docker volume rm $(docker volume ls -q)

# Remover todas as redes que não estão em uso
echo "Removendo todas as redes não utilizadas..."
docker network prune -f

# Remover todos os objetos não utilizados (opcional)
echo "Executando docker system prune para limpar tudo..."
docker system prune -a --volumes -f

echo "Limpeza completa do Docker realizada com sucesso!"
