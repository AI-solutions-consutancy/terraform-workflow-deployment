  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= v4.4.0"
    }
# Create a resource group
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}
