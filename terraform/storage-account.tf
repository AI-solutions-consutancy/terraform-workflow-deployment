module "storageaccount" {
  source                           = "./modules/storageaccount"
  name                             = "testfrdf54"
  resource_group_name              = var.resource_group_name
  location                         = var.location
  storage_account_tier             = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type
}
  
resource "azurerm_storage_container" "stg_container" {
  depends_on = [ module.storageaccount ]
  name                  = var.container_name
  storage_account_name  = module.storageaccount.name
  container_access_type = "private"
}  
