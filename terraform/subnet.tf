module "subnet" {
    source = "./modules/subnet"
    subnet_name          = "subnet1"
    virtual_network_name = module.virtualnetwok.name
    resource_group_name = var.resource_group_name
    location            = var.location
    address_prefixes    = var.address_prefixes
}

module "subnet1" {
    source = "./modules/subnet"
    subnet_name          = "storage-subnet"
    virtual_network_name = module.virtualnetwok.name
    resource_group_name = var.resource_group_name
    location            = var.location
    address_prefixes    = ["10.0.2.0/24"]
}

module "subnet2" {
    source = "./modules/subnet"
    subnet_name          = "pendpoint-subnet"
    virtual_network_name = module.virtualnetwok.name
    resource_group_name = var.resource_group_name
    location            = var.location
    address_prefixes    = ["10.0.3.0/24"]
}

module "subnet3" {
    source = "./modules/subnet"
    subnet_name          = "keyvault-subnet"
    virtual_network_name = module.virtualnetwok.name
    resource_group_name = var.resource_group_name
    location            = var.location
    address_prefixes    = ["10.0.4.0/24"]
}

module "subnet4" {
    source = "./modules/subnet"
    subnet_name          = "general-subnet"
    virtual_network_name = module.virtualnetwok.name
    resource_group_name = var.resource_group_name
    location            = var.location
    address_prefixes    = ["10.0.5.0/24"]
}