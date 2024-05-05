#!/bin/bash

# Verifica se já existe um serviço no apprunner
result=$(aws apprunner list-services --region $2 | jq --arg service "$1" '.ServiceSummaryList[] | select(.ServiceName == $service) != null')
if [[ "$result" ]]; then
echo -n "{\"success\":\"true\", \"name\":\"$1\"}"
else
error_message=$(echo $result | jq -R -s -c '.')
echo -n "{\"success\":\"false\", \"name\":\"$1\"}"
fi