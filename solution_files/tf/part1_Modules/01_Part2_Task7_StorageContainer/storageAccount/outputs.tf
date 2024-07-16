output "storageAccountName" { 
  value = azurerm_storage_account.iac_stg_acct_module.name 
} 

output "storageAccountId" { 
  value = azurerm_storage_account.iac_stg_acct_module.id 
}

output "storageAccountLocation" { 
  value = azurerm_storage_account.iac_stg_acct_module.location 
}