terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= v4.4.0"
    }
  


 backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "storagebackend34"
    container_name       = "tfstate"
    key                  = "terraform-dev.tfstate"
  }
}
}

provider "azurerm" {
  features {}
}