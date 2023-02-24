## Ansible Playbooks

Ansible é uma ferramenta de TI de código aberto para gerenciar, automatizar, configurar servidores e, implantar aplicativos, a partir de uma localização central.


## Atualizar Nós de Desenvolvimento (34)
```
| IP  -  NOME  -  FUNÇÃO
├ 10.10.34.21 (numenor-k8s-01) - Control Planve
├─ 10.10.34.22 (gondor-k8s-02) - Worker
├── 10.10.34.23 (condado-k8s-03) - Worker
└── Máquinas Docker e Kubernetes de Desenvolvimento
```
### Script para rodar o playbook
```
    $ ansible-playbook upnodes.yaml -u unimed -i hosts -vv
```

## √ Tasks

* Atualizar o repositório do **APT**;
* Instalar e realizar upgrade na versão das aplicações, bibliotecas e repositórios instalados;
* Remover **Containers** e **Imagens** **Docker** que não estejam em execução, quebrados e cache de build;

### Maintainer: *Devops Unimed Natal* - devops@unimenatal.com.br
#### ― playbook/dev » maquinas de desenvolvimento
