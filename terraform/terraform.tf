terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.104.2"
    }
  }


  backend "azurerm" {
    subscription_id      = "94ea13c7-4cec-4c76-8a90-1a7815cc0c51"
    resource_group_name  = "rg-bankend-dev"
    storage_account_name = "storageaccountbackend56"
    container_name       = "tfstate"
    key                  = "terraform-dev.tfstate"
  }
}

provider "azurerm" {
  # skip_provider_registration = "true"



  features {}
}
