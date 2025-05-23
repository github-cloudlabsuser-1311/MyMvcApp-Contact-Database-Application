# ARM Template Deployment for ASP.NET Core MVC Application

This project contains an Azure Resource Manager (ARM) template for deploying an ASP.NET Core MVC application to Azure. The deployment is automated using a PowerShell script.

## Project Structure

- **templates/**: Contains the ARM templates.
  - **azuredeploy.json**: Main ARM template defining the resources to be deployed.
  - **azuredeploy.parameters.json**: Parameters file for customizing the deployment.
  
- **scripts/**: Contains deployment scripts.
  - **deploy.ps1**: PowerShell script to automate the deployment process.

## Prerequisites

- Azure subscription
- Azure CLI installed
- PowerShell installed

## Deployment Instructions

1. Open PowerShell and navigate to the `scripts` directory.
2. Log in to your Azure account using the command:
   ```
   az login
   ```
3. Select the appropriate subscription (if necessary):
   ```
   az account set --subscription "Your Subscription Name"
   ```
4. Run the deployment script:
   ```
   .\deploy.ps1
   ```

Follow the prompts to complete the deployment of the ASP.NET Core MVC application.