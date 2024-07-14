terraform {
  required_version = "UPDATE_ME_OR_IT_WONT_WORK"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "UPDATE_ME_OR_IT_WONT_WORK"      
    }
    arm2tf = {
      source  = "cloud-maker-ai/arm2tf"
      version = "UPDATE_ME_OR_IT_WONT_WORK"
    }    
  }

  backend "azurerm" {
    resource_group_name  = "UPDATE_ME_OR_IT_WONT_WORK"
    storage_account_name = "UPDATE_ME_OR_IT_WONT_WORK"
    container_name       = "UPDATE_ME_OR_IT_WONT_WORK"
    key                  = "UPDATE_ME_OR_IT_WONT_WORK"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {    
  }
  use_oidc = true
}