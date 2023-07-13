shell
#!/bin/bash
 CONTAINER_NAME="nodejs-busybox-test"
# Verifica se o container está em execução
if docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo "O Container de testes está rodando. Confira os logs abaixo:"
     # Mostra os logs do container
    docker logs "${CONTAINER_NAME}"
     # Verifica se o container está execuntando normalmente
    if docker inspect --format='{{.State.Status}}' "${CONTAINER_NAME}" | grep -q "running"; then
        echo "Parabéns, o container de testes rodou normalmente!!! Removendo container de testes ..."
        docker rm -f "${CONTAINER_NAME}"
        echo "Container de testes removido com sucesso!"
    else
        echo "O container de testes está apresentando erros, verifique os logs"
    fi
else
    echo "O container de teste não está rodando."
fi