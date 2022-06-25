#!/bin/bash

case $1 in

    browse)
        url=`az webapp list --query '[].hostNames' --output tsv`
        python -mwebbrowser $url
    ;;

    deploy)
        az deployment group create --template-file azure.bicep --parameters location='centralus'
    ;;

    login)
        az login --tenant learn.docs.microsoft.com
        az configure --defaults group=`az group list --query '[].name' --output tsv`
    ;;

    sandbox)
        python -mwebbrowser https://docs.microsoft.com/en-us/learn/modules/host-a-web-app-with-azure-app-service/3-exercise-create-a-web-app-in-the-azure-portal?pivots=python
    ;;
    
    *)
        echo "./azure.sh browse | deploy | login | sandbox"
    ;;

esac