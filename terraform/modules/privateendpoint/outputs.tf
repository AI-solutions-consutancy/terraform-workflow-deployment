# data "azurerm_resource_group" "rg" {
#   name = "rg-ai-dev"
# }

output "pendpoint_name" {
    value = azurerm_private_endpoint.pendpoint.name
}

# output "subnet_id" {
#   value = azurerm_subnet.subnet.id
  
# }