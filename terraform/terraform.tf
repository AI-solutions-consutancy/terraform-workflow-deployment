terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.107.0"
    }
  }


  backend "azurerm" {
    subscription_id      = "5df2b30f-eca7-4196-87e0-d02873d682c5" 
    resource_group_name  = "rg-ai-storagebackends-dev"
    storage_account_name = "storagebackendsdev"
    container_name       = "tfstate"
    key                  = "terraform-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
