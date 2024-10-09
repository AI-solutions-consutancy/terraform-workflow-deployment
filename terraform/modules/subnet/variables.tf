variable "virtual_network_name" {
  type = string
}

variable "resource_group_name" {
  type = string 
}

variable "location" {
  type = string
} 

variable "address_prefixes" {
  type = list
}

variable "subnet_name" {
    type = string
}