
# module "privateendpoint" {
#   source = "./modules/privateendpoint"

#   pendpoint_name      = "pendpoint-${var.application_name}-${var.env}"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   subnet_id           = "/subscriptions/94ea13c7-4cec-4c76-8a90-1a7815cc0c51/resourceGroups/rg-ai-dev/providers/Microsoft.Network/virtualNetworks/vnet-ai-dev/subnets/subnet1-ai-dev"
#   tags                = var.tags
# }

# NOT POSSIBLE TO CREATE A MODULE --JUST CONSUME THE CONFIG WHILST CREATING PRIVATE ENDPOINT