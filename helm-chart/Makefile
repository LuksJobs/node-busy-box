# Makefile responsável por alterar a versão dos Charts Kubernetes

include /home/unimed/projetos/api-servicos/.cicdenv

helm_tag:
	yq -i '.image.tag = "${IMAGE_TAG}"' values.yaml 
	yq -i '.appVersion = "${IMAGE_TAG}"' Chart.yaml 
	yq -i '.version = "${VERSION}"' Chart.yaml