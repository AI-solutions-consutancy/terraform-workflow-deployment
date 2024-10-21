# module "storageaccount" {

#   source                        = "./modules/storageaccount"
#   name                          = "storage66${var.application_name}${var.env}"
#   resource_group_name           = var.resource_group_name
#   location                      = var.location
#   account_tier                  = "Standard"
#   account_replication_type      = "LRS"
#   public_network_access_enabled = false
#   tags                          = var.tags
# }

# #######################################################
# # Storage Container
# ########################################################

# resource "azurerm_storage_container" "stg_container" {
#   depends_on            = [module.storageaccount]
#   name                  = "test"
#   storage_account_name  = module.storageaccount.name
#   container_access_type = "private"
# }

# #######################################################
# # Storage Blob
# ########################################################

# resource "azurerm_storage_blob" "example" {
#   depends_on             = [azurerm_storage_container.stg_container]
#   name                   = "my-awesome-content.zip"
#   storage_account_name   = module.storageaccount.name
#   storage_container_name = azurerm_storage_container.stg_container.name
#   type                   = "Block"
#   source                 = "some-local-file.zip"
# }