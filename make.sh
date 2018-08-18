#!/bin/sh
az configure --defaults acr=stevelas
FUNCTION_NAMESPACE=functions/
# AddEmUp
az acr build -t ${FUNCTION_NAMESPACE}addemup:latest -t ${FUNCTION_NAMESPACE}addemup:{{.Build.ID}} ./addemup/

# echo
az acr build -t ${FUNCTION_NAMESPACE}echo:latest -t ${FUNCTION_NAMESPACE}echo:{{.Build.ID}} ./echo/

# ping
az acr build -t ${FUNCTION_NAMESPACE}ping:latest -t ${FUNCTION_NAMESPACE}ping:{{.Build.ID}} ./ping/
