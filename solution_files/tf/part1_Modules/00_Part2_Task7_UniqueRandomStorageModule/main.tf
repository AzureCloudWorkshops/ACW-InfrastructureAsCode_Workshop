locals {  
  storageAccountNameFull = substr("${var.storageAccountNameBase}${var.uniqueIdentifier}${var.environment}${random_string.random.id}",0,24)
}

resource "random_string" "random" {
    length           = 10
    special          = false
    lower            = true
    upper            = false 
}

resource "azurerm_resource_group" iac_rg {
  name     = var.resourceGroupName
  location = var.location
}

 module "storageAccount" { 
  source = "./storageAccount" 
  storageAccountNameFull = local.storageAccountNameFull 
  resourceGroupName     = var.resourceGroupName 
  location              = var.location 
}