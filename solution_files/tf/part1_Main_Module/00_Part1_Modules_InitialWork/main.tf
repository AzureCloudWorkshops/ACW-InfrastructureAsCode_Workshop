resource "azurerm_resource_group" iac_rg {
  name     = var.resourceGroupName
  location = var.location
}