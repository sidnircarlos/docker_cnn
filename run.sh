#!/bin/bash

# Construa a imagem Docker
docker build -t image-dl . &&

# Execute o contêiner Docker
docker run -d --rm --gpus all --name jupyterserver -p 8888:8888 -v "$PWD/notebooks:/home/notebooks" image-dl &&

# Exiba os contêineres em execução
docker ps &&

# Exiba os logs do contêiner
docker container logs jupyterserver 
