terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.107.0"
    }
  }


  backend "azurerm" {
    resource_group_name  = "rg-ai-backend-dev"
    storage_account_name = "storagebackendev"
    container_name       = "tfstate"
    key                  = "terraform-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
