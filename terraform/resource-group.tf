module "resourcegroups" {
    source                 = "../../modules/resourcegroups"
    name                   = var.resource_group_name
    location               = var.location
}
