#!/bin/bash

# https://docs.microsoft.com/en-us/learn/modules/host-a-web-app-with-azure-app-service/3-exercise-create-a-web-app-in-the-azure-portal?pivots=python


case $1 in

    login)
        az login --tenant learn.docs.microsoft.com
        az configure --defaults group=`az group list --query '[].name' --output tsv`
    ;;

    deploy)
        az deployment group create --template-file azure.bicep
    ;;
    
    *)
        echo "unkown command"
    ;;

esac