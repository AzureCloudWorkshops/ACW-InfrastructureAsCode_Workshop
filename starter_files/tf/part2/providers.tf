terraform {
  required_version = ">=1.6.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"     
    }   
  }

  backend "azurerm" {
    resource_group_name  = "yourresourcegroupnamegoeshere"
    storage_account_name = "yourstorageaccountnamegoeshere"
    container_name       = "yourcontainernamegoeshere"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {    
  }
  use_oidc = true
}
