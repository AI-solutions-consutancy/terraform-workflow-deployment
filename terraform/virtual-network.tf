
module "virtualnetwok" {
  source = "./modules/virtualnetwork"

  virtual_network_name = "vnet-${var.application_name}-${var.env}"
  resource_group_name  = var.resource_group_name
  location             = var.location
  vnet_address_space   = ["10.0.0.0/16"]
  tags                 = var.tags
}


## Vnet Module created with Meta argument count

# module "virtualnetwok" {
#   source               = "./modules/virtualnetwork"
#   count                = var.vnet_count
#   virtual_network_name = "vnet-${var.application_name}-${var.env}-${count.index+1}"
#   resource_group_name  = var.resource_group_name
#   location             = var.location
#   vnet_address_space   = ["10.0.0.0/16"]
#   tags                 = var.tags
# }


## Vnet Module created with Meta argument for_each 

# module "virtualnetwok" {
#   source               = "./modules/virtualnetwork"   # deployed with variable type = set(string)
#   for_each             = var.vnet_instances
#   virtual_network_name = each.key
#   resource_group_name  = var.resource_group_name
#   location             = var.location
#   vnet_address_space   = each.value
#   tags                 = var.tags
# }