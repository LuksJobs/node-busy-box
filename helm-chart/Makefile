
include /home/gitlab-runner/builds/glrt-ryY/0/unimed_natal/devops/nodejs-busybox/.env

helm_tag:
		yq -i '.image.tag = "${IMAGE_TAG}"' values.yaml 
		yq -i '.appVersion = "${IMAGE_TAG}"' Chart.yaml
		yq -i '.version = "${VERSION}"' Chart.yaml
