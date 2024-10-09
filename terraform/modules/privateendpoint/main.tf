resource "azurerm_private_endpoint" "pendpoint" {
  name                = var.pendpoint_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = var.privateserviceconnection_name
    private_connection_resource_id = var.private_connection_resource_id
    is_manual_connection           = false
  }
}