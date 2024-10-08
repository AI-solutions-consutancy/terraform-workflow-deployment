module "resourcegroups" {
  source   = "./modules/resourcegroups"
  resource_group_name = var.resource_group_name
  location            = var.location
}
