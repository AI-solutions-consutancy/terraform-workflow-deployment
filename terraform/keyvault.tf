module "keyvault" {
    source = "./modules/keyvault"
    keyvault_name       = var.keyvault_name
    resource_group_name = var.resource_group_name
    location            = var.location
    keyvault_sku_name   = var.keyvault_sku_name
}
 
