
[![pipeline status](https://gitlab.com/unimed_natal/devops/nodejs-busybox/badges/docker/nodejsbusybox/pipeline.svg)](https://gitlab.com/unimed_natal/devops/nodejs-busybox/-/commits/docker/nodejsbusybox)

## Ubuntu Dockerfile

Esse repositório contém o **Dockerfile** do [Ubuntu](http://www.ubuntu.com/) para [Docker](https://www.docker.com/)'s com o objetivo de realizar testes de[automação de build](https://registry.hub.docker.com/u/dockerfile/ubuntu/) também como realizar teste de CI/CD e estágio de teste unitário em containers de homolgação/produção. 


### Imagem Docker Ubuntu

* [ubuntu:latest](https://registry.hub.docker.com/u/library/ubuntu/)


### Formas de Uso

Rodando aplicação standalone, diretamente pela CLI:

```
   $ docker run -it --rm dockerfile/ubuntu
```

Ou com o compose:

```
   $ docker compose up -d 
```

O CI/CD estará apontando pra uma máquina de desenvolvimento, provavelmente a máquina 34.21

### Acessando o Container:

```
   $ docker container exec -it nomedocontainer /bin/bash
```
