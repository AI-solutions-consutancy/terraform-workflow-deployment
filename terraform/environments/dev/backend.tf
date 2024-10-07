  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "storagebackend34"
    container_name       = "tfstate"
    key                  = "terraform-dev.tfstate"
  }
