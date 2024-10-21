variable "route_table_name" {
type =  string
}

variable "resource_group_name" {
  type = string 
}

variable "location" {
  type = string
} 

variable "tags" {
  type = map(string)
  description = "List of tags to apply to resources"
  default = {}
}

variable "disable_bgp_route_propagation" {
  type        = bool
  default     = true
  description = "Boolean flag which controls propagation of routes learned by BGP on that route table."
}

variable "routes" {
  type = list(object({
    name                   = string
    address_prefix         = string
    next_hop_type          = string
    next_hop_in_ip_address = optional(string)
  }))
  default     = []
  description = "List of objects that represent the configuration of each route."
}