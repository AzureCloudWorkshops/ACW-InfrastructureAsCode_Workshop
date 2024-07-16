data "azurerm_resource_group" "data_rg" { 
  name = var.resourceGroupName 
}

resource "azurerm_storage_account" "iac_stg_acct" { 
  name                     = var.storageAccountName
  resource_group_name      = data.azurerm_resource_group.data_rg.name
  location                 = data.azurerm_resource_group.data_rg.location
  account_tier             = "Standard" 
  account_replication_type = "LRS" 
}