terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.104.2"
    }
  }
}
provider "azurerm" {
 skip_provider_registration = "true"
   
  client_id       = "7f19c283-c2f3-45c5-87ba-565fddc8e70e"
  client_secret   = "sQC8Q~1GzqcK7bcCisZExBYdEf1vPlKT9Huu~cGM"
  tenant_id       = "28122101-5d32-420a-a7f9-afa7d6cbae10"
  subscription_id = "94ea13c7-4cec-4c76-8a90-1a7815cc0c51"
   features {}
 
}
