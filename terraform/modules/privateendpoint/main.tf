resource "azurerm_private_endpoint" "pendpoint" {
  name                = var.pendpoint_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  tags                = var.tags

  private_service_connection {
    name                           = "test-connection"
    private_connection_resource_id = var.resource_id
    is_manual_connection           = false
  }
}
