data "azurerm_resource_group" "rg" {
  name = "ai-uks-dev-rg001"
}

output "pendpoint_name" {
    value = azurerm_private_endpoint.pendpoint.name
}