terraform {
  required_version = ">=1.6.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"      
    } 

    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  }

  backend "azurerm" {
      resource_group_name  = "rg-terraform-github-actions-state"
      storage_account_name = "tfghactions20291231acw"
      container_name       = "tfstatepart1"
      key                  = "terraform.tfstate"
      use_oidc             = true
  }  
}

provider "azurerm" {
  features {    
  }
}