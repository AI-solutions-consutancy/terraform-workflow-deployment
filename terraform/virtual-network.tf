module "virtualnetwok" {
    source = "./modules/virtualnetwork"
    virtual_network_name = var.virtual_network_name
    resource_group_name = var.resource_group_name
    location            = var.location
    vnet_address_space  = var.vnet_address_space
}