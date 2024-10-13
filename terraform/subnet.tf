# module "subnet" {
#   source                                  = "./modules/subnet"
#   depends_on                              = [module.virtualnetwok]
#   subnet_name                             = "subnet-${var.application_name}-${var.env}"
#   virtual_network_name                    = module.virtualnetwok.name
#   resource_group_name                     = var.resource_group_name
#   location                                = var.location
#   address_prefixes                        = ["10.0.1.0/24"]
#   private_endpoint_network_policies       = "Enabled"
#   tags                                    = var.tags
# }

module "subnet" {
  source                            = "./modules/subnet"
  for_each                          = var.subnets
  depends_on                        = [module.virtualnetwok]
  subnet_name                       = each.key
  virtual_network_name              = module.virtualnetwok.name
  resource_group_name               = var.resource_group_name
  location                          = var.location
  address_prefixes                  = each.value
  private_endpoint_network_policies = "Enabled"
  tags                              = var.tags
}

# resource "azurerm_subnet_network_security_group_association" "nsg_association" {

#   subnet_id                 = "module.subnet.id"                    ## It is GIVING ERROR?
#   network_security_group_id = module.networksecuritygroups.id
# }