module "storageaccount" {
  source                           = "./modules/storageaccount"
  name                             = "testfrdf54"
  resource_group_name              = var.resource_group_name
  location                         = var.location
  storage_account_tier             = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type
}
  
