# module "routetable" {
#   source = "./modules/routetable"

#   route_table_name    = "rt-${var.application_name}-${var.env}"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   routes = [
#     { name = "route1", address_prefix = "10.0.0.0/16", next_hop_type = "VirtualAppliance", next_hop_in_ip_address = "10.0.0.4" },
#     { name = "route2", address_prefix = "10.10.0.0/16", next_hop_type = "VirtualAppliance", next_hop_in_ip_address = "10.0.0.4" },
#     { name = "route3", address_prefix = "0.0.0.0/0", next_hop_type = "Internet" }
#   ]
#   disable_bgp_route_propagation = false
# }