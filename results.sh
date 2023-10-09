#!/bin/bash

# Fetch the logs from GitLab API
logs=$(curl --header "PRIVATE-TOKEN: $CI_USER_TOKEN" "https://gitlab.com/unimed_natal/api/v4/projects/47099278/jobs/$CI_JOB_ID/trace")

# Send the logs via email
echo "$logs" | mailx -s "Docker Scan do Repositório $CI_PROJECT_NAME" seguranca.ti@unimednatal.com.br