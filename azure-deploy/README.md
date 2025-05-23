# ASP.NET Core MVC Application Deployment

This repository contains an ARM template for deploying an ASP.NET Core MVC application to Azure.

## Files Overview

- **deploy.json**: This is the ARM template that defines the Azure resources required for the deployment, including the Azure App Service and any additional resources like storage accounts or databases.

- **deploy.parameters.json**: This file contains parameters for the ARM template, allowing customization of the deployment process. You can specify values such as the app service name, resource group, and connection strings.

## Prerequisites

- An Azure account with an active subscription.
- Azure CLI installed and configured on your local machine.
- Basic knowledge of Azure Resource Manager (ARM) templates.

## Deployment Instructions

1. Clone this repository to your local machine.
2. Open a terminal and navigate to the directory containing the ARM template files.
3. Log in to your Azure account using the Azure CLI:
   ```
   az login
   ```
4. Create a resource group (if you don't have one already):
   ```
   az group create --name <your-resource-group-name> --location <your-location>
   ```
5. Deploy the ARM template using the following command:
   ```
   az deployment group create --resource-group <your-resource-group-name> --template-file deploy.json --parameters deploy.parameters.json
   ```
6. Monitor the deployment process in the Azure portal.

## Additional Information

For more details on ARM templates and Azure services, refer to the official Azure documentation.