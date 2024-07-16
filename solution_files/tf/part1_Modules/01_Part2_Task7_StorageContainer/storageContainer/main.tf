resource "azurerm_storage_container" "images_container" {
  name                  = var.containerName
  storage_account_name  = var.storageAccountName
}