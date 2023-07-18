# Makefile responsável por alterar a versão dos Charts Kubernetes

include /home/gitlab-runner/builds/glrt-8JP/1/unimed_natal/devops/nodejs-busybox/.env

helm_tag:
	yq -i '.image.tag = "${IMAGE_TAG}"' values.yaml
	yq -i '.appVersion = "${IMAGE_TAG}"' Chart.yaml 
	yq -i '.version = "${VERSION}"' Chart.yaml