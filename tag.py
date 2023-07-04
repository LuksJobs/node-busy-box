#!/usr/bin/env python3
import os
import re
import sys
import subprocess


def git(*args):
    return subprocess.check_output(['git'] + list(args))


def tag_repo(tag):
    url = os.environ['https://devops:gA_QVrvQ6wizGdyM81Cq@gitlab.com/unimed_natal/devops/nodejs-busybox.git']

    # "Transforma a URL do repositório para a URL SSH"
    # Exemplo de entrada: https://gitlab-ci-token:xxxxxxxxxxxxxxxxxxxx@gitlab.com/unimed_natal/devops/nodejs-busybox.git
    # Exemplo de saída: gitlab.com/unimed_natal/devops/nodejs-busybox.git
    
    push_url = re.sub(r'.+@([^/]+)/', r'git@\1:', url)

    git('remote', 'set-url', '--push', 'origin', push_url)
    git('tag', tag)
    git('push', 'origin', tag)


def main():
    if 'VERSION' not in os.environ:
        print('VERSÃO não definida')
        return -1
    version = os.environ['VERSION']

    # verifique se a versão já existe
    tags = git('describe', '--tags', '--always').decode().strip()
    if version in tags:
        print('Essa versão já existe!')
        return -1

    tag_repo(version)

    return 0


if __name__ == '__main__':
    sys.exit(main())