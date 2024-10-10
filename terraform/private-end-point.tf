
module "privateendpoint" {
    source = "./modules/privateendpoint"
  
pendpoint_name                  = var.pendpoint_name
resource_group_name             = var.resource_group_name
location                        = var.location
subnet_id                       = data.azurerm_subnet.pe_subnet.id
privateserviceconnection_name   = var.privateserviceconnection_name
}

