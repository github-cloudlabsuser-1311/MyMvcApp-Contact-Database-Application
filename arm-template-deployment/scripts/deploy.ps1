# PowerShell script to deploy the ARM template for the ASP.NET Core MVC application

param(
    [string]$resourceGroupName = "<YourResourceGroupName>",
    [string]$location = "<YourLocation>",
    [string]$templateFile = "../templates/azuredeploy.json",
    [string]$parameterFile = "../templates/azuredeploy.parameters.json"
)

# Log in to Azure
az login

# Set the subscription (optional)
# az account set --subscription "<YourSubscriptionName>"

# Create the resource group if it doesn't exist
az group create --name $resourceGroupName --location $location

# Deploy the ARM template
az deployment group create --resource-group $resourceGroupName --template-file $templateFile --parameters @$parameterFile

Write-Host "Deployment completed."