data "azurerm_resource_group" "rg" {
  name = "ai-uks-dev-rg001"
}

data "azurerm_virtual_network" "vnet" {
  name                = "vnet1"
  resource_group_name = data.azurerm_resource_group.rg.name
}

data "azurerm_subnet" "pe_subnet" {
  name                 = "general-subnet"
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = data.azurerm_resource_group.rg.name
}
