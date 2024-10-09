variable "resource_group_name" {
  type    = string
  default = "ai-uks-dev-rg001"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type    = string
  default = "GRS"
}

variable "container_name" {
  type = string
  default = "test"
}

variable "virtual_network_name" {
  type = string
  default = "vnet1"
}

variable "vnet_address_space" {
  default = [
    "10.0.0.0/16" ]
}


variable "address_prefixes" {
  default = ["10.0.1.0/24"]
}

variable "keyvault_name" {
  default = "keyvaultsre23"
}

variable "keyvault_sku_name" {
  default = "standard"
}
