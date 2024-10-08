resource "azurerm_storage_account" "stg" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_storage_container" "stg_container" {
  name                  = "var.container_name"
  storage_account_name  = azurerm_storage_account.stg.name
  container_access_type = "private"
}
