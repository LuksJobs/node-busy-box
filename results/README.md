### Docker Scan - Resultados

Diretório responsável em guardar os logs gerados no Scan da Imagem Docker no estágio "docker_scan" da Pipeline do Gitlab

---

Os logs são enviados para o e-mail do time de segurança da informação "seguranca.ti@unimednatal.com.br".

```
$ trivy image $REGISTRY/$REPOSITORY:$CI_COMMIT_SHORT_SHA --output results/
```