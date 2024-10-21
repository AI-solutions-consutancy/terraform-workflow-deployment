module "vmwindows" {
  source = "./modules/vmwindows"

  vm_name             = "vm34-${var.application_name}-${var.env}"
  location            = var.location
  resource_group_name = var.resource_group_name
  key_vault_id        = "module.keyvault.id"
  subnet_id           = "/subscriptions/94ea13c7-4cec-4c76-8a90-1a7815cc0c51/resourceGroups/rg-ai-dev/providers/Microsoft.Network/virtualNetworks/vnet-ai-dev/subnets/subnet1-ai-dev"
  tags                = var.tags
}


