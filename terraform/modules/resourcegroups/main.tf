
# Create a resource group
resource "azurerm_resource_group" "rg" {
  resource_group_name    = var.resource_group_name
  location               = var.location
}
