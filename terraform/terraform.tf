terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= v4.4.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = ">= 2.3.0"
}
  }


 backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "storagebackend34"
    container_name       = "tfstate"
    key                  = "terraform-dev.tfstate"
  }
}
provider "azurerm" {
  features {}
}
