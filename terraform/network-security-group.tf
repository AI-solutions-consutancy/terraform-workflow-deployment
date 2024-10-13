module "networksecuritygroups" {
  source                      = "./modules/networksecuritygroups"
  network_security_group_name = "nsg-${var.application_name}-${var.env}"
  location                    = var.location
  resource_group_name         = var.resource_group_name
}

resource "azurerm_network_security_rule" "inbound_rules" {
  depends_on                  = [module.networksecuritygroups]
  for_each                    = local.nsgrules
  name                        = each.key
  direction                   = each.value.direction
  access                      = each.value.access
  priority                    = each.value.priority
  protocol                    = each.value.protocol
  source_port_range           = each.value.source_port_range
  destination_port_range      = each.value.destination_port_range
  source_address_prefix       = each.value.source_address_prefix
  destination_address_prefix  = each.value.destination_address_prefix
  resource_group_name         = var.resource_group_name
  network_security_group_name = module.networksecuritygroups.name
}

resource "azurerm_network_security_rule" "outbound_rules" {
  depends_on                  = [module.networksecuritygroups]
  for_each                    = local.nsgrules
  name                        = each.key
  direction                   = each.value.direction
  access                      = each.value.access
  priority                    = each.value.priority
  protocol                    = each.value.protocol
  source_port_range           = each.value.source_port_range
  destination_port_range      = each.value.destination_port_range
  source_address_prefix       = each.value.source_address_prefix
  destination_address_prefix  = each.value.destination_address_prefix
  resource_group_name         = var.resource_group_name
  network_security_group_name = module.networksecuritygroups.name
}
