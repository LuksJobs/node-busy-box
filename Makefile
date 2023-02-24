#Arquivo make para otimizar o processo de "build" e tag da imagem, também como
#o processo de envio da imagem; 

DOCKER_USERNAME ?= unimed
APPLICATION_NAME ?= nodejs
#GIT_HASH ?= $(shell git rev-parse --short HEAD) 
# ^ CASO SE A TAG DA IMG FOSSE BASEADO NO HASH DO COMMIT
include .env

build:
	docker build --tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:${IMAGE_TAG} .

tag:
	docker tag ${DOCKER_USERNAME}/${APPLICATION_NAME}:${IMAGE_TAG} harbor.unimednatal.com.br/busybox-nodejs/${DOCKER_USERNAME}/${APPLICATION_NAME}:${IMAGE_TAG}

push: 
	docker push harbor.unimednatal.com.br/busybox-nodejs/${DOCKER_USERNAME}/${APPLICATION_NAME}:${IMAGE_TAG}