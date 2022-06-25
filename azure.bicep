/*
@allowed([
  'nonprod'
  'prod'
])
param environmentType string
var appServicePlanSkuName = (environmentType == 'prod') ? 'P2_v3' : 'F1'
*/

param location string
param name string

@description('The SKU of App Service Plan')
param sku string = 'F1' // Free tier

resource appServicePlan 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: 'app-service-plan-${name}'
  location: location
  kind: 'linux'
  properties: {
    reserved: true
  }
  sku: {
    name: sku
  }
}

resource webApp 'Microsoft.Web/sites@2021-03-01' = {
  name: '${name}-${uniqueString(resourceGroup().id)}'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
    siteConfig: {
      linuxFxVersion: 'PYTHON|3.9'
    }
  }
}

resource webAppSourceControl 'Microsoft.Web/sites/sourcecontrols@2021-02-01' = {
  name: 'web'
  parent: webApp
  properties: {
    repoUrl: 'https://github.com/ddemingo/webapp-python'
    branch: 'main'
    isManualIntegration: true
  }
}
