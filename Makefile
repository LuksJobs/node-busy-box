#Arquivo make para otimizar o processo de "build" e tag da imagem, também como
#o processo de envio da imagem; 

include .cicdenv
include .env

#GIT_HASH ?= $(shell git rev-parse --short HEAD) 
# ^ CASO SE A TAG DA IMG FOSSE BASEADO NO HASH DO COMMIT

build:
	docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:${IMAGE_TAG}  .

tag:
	docker tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:${IMAGE_TAG} harbor.unimednatal.com.br/busybox-nodejs/${DOCKER_USERNAME}/${APPLICATION_NAME}:${IMAGE_TAG} 

compose_tag:
# 1. Extrair o valor da variável IMAGE_TAG do arquivo .env
	IMAGE_TAG=$(sed -n 's/IMAGE_TAG=\(.*\)/\1/p' .env)

# 2. Substituir o campo "tag" no arquivo docker-compose.yml pelo valor extraído
	sed -i "s/tag:.*/tag: $IMAGE_TAG/g" docker-compose.yml

test:
	docker container logs nodejs-busybox
	
push: 
	docker push harbor.unimednatal.com.br/busybox-nodejs/${DOCKER_USERNAME}/${APPLICATION_NAME}:${IMAGE_TAG}

deploy_docker:
	docker compose down
	docker compose up -d