/*
module "keyvault" {
  source              = "./modules/keyvault"
  keyvault_name       = "kvault1-${var.application_name}-${var.env}"
  resource_group_name = var.resource_group_name
  location            = var.location
  keyvault_sku_name   = "standard"

  access_policies = [
    {
      object_id          = "561f6ef4-1c74-48db-b9a3-55544b575402"
      secret_permissions = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore", "Purge"]
    }
  ]
}
*/
