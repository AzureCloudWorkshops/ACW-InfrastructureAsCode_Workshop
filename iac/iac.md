# IAC

Place your IAC files in this folder

## Starter workflow

Just in case you need something or more than anything to get started with a workflow, here is a stub for a workflow that is clearly not complete or accurate.  It is just a starting point.

```yaml
name: "Deploy Resources"

on:
  push:
    branches: [ nowayjose ]
  workflow_dispatch:

env: 
  ARM_CLIENT_ID: "${{ secrets.AZURE_CLIENT_ID_CONTACTWEB_DEV }}"
  ARM_SUBSCRIPTION_ID: "${{ secrets.AZURE_SUBSCRIPTION_ID }}"
  ARM_TENANT_ID: "${{ secrets.AZURE_TENANT_ID }}"
  CURRENT_BRANCH: ${{ github.head_ref || github.ref_name }} 
  TEMPLATE: 'iac/some-bicep-or-terraform-file'
  PARAMETERS: 'iac/some-bicep-or-terraform-file.parameters.json'  
  DEPLOYMENT_NAME: 'BicepDeployResources'
  REGION: 'eastus'

permissions:
  id-token: write
  contents: read

jobs:
  dev-deploy:
    name: Dev Deploy
    runs-on: ubuntu-latest
    environment:
      name: 'dev'

    steps:
      - name: Checkout Code
        uses: actions/checkout@v4
```  

>**Important**: This is a WORKFLOW, not a bicep or terraform file so you would put the file as `someworkflow.yml` in your `.github\workflows` folder.

