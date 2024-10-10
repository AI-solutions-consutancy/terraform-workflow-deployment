module "storageaccount" {
  source                           = "./modules/storageaccount"
  account_replication_type      = "GRS"
  account_tier                  = "Standard"
  account_kind                  = "StorageV2"
  location                      = var.location
  name                          = "test76865"
  https_traffic_only_enabled    = true
  resource_group_name           = var.resource_group_name
  min_tls_version               = "TLS1_2"
  shared_access_key_enabled     = true
  public_network_access_enabled = true
  
  tags = {
    env   = "Dev"
    owner = "Shahid"
    dept  = "IT"
  }
}
  
# resource "azurerm_storage_container" "stg_container" {
#   depends_on = [ module.storageaccount ]
#   name                  = var.container_name
#   storage_account_name  = module.storageaccount.name
#   container_access_type = "private"
   
# }  


