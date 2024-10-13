variable "virtual_network_name" {
  type = string
  description = "Name of the vnet to create"
}

variable "resource_group_name" {
  type = string 
  description = "Name of the resource group to be imported"
}

variable "location" {
  type = string
  description = "The location of the vnet to create"
} 

variable "vnet_address_space" {
  type = list(string)
  description = "The address space that is used by the virtual network"
}

variable "tags" {
  type = map(string)
  description = "List of tags to apply to resources"
  default = {}
}