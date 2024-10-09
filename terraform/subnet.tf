module "subnet" {
    source = "./modules/subnet"
    subnet_name          = "subnet1"
    virtual_network_name = module.virtualnetwok.name
    resource_group_name = var.resource_group_name
    location            = var.location
    address_prefixes    = var.address_prefixes
}