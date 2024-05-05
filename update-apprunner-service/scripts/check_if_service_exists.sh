#!/bin/bash

# Verifica se já existe um serviço no apprunner
resultJson=$(aws apprunner list-services --region $2)
existsService=$(echo $resultJson | jq --arg service "$1" '.ServiceSummaryList[] | select(.ServiceName == $service) != null')
if [[ "$existsService" ]]; then
serviceArn=$(echo $resultJson | jq --arg service "$1" '.ServiceSummaryList[] | select(.ServiceName == $service)' | jq -r '.ServiceArn')
echo -n "{\"success\":\"true\", \"name\":\"$1\", \"service_arn\": \"$serviceArn\"}"
else
echo -n "{\"success\":\"false\", \"name\":\"$1\"}"
fi