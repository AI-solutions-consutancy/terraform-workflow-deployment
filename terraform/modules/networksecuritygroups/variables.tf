variable "network_security_group_name" {
type =  string
}

variable "resource_group_name" {
  type = string 
}

variable "location" {
  type = string
} 

# variable "inbound_rules" {
#   type = list(object({
#     name                                       = string
#     priority                                   = number
#     access                                     = string
#     protocol                                   = string
#     source_address_prefix                      = optional(string)
#     source_address_prefixes                    = optional(list(string))
#     source_application_security_group_ids      = optional(list(string))
#     source_port_range                          = optional(string)
#     source_port_ranges                         = optional(list(string))
#     destination_address_prefix                 = optional(string)
#     destination_address_prefixes               = optional(list(string))
#     destination_application_security_group_ids = optional(list(string))
#     destination_port_range                     = optional(string)
#     destination_port_ranges                    = optional(list(string))
#     description                                = optional(string)
#   }))
#   default     = []
#   description = "List of objects that represent the configuration of each inbound rule."
# }

# variable "outbound_rules" {
#   type = list(object({
#     name                                       = string
#     priority                                   = number
#     access                                     = string
#     protocol                                   = string
#     source_address_prefix                      = optional(string)
#     source_address_prefixes                    = optional(list(string))
#     source_application_security_group_ids      = optional(list(string))
#     source_port_range                          = optional(string)
#     source_port_ranges                         = optional(list(string))
#     destination_address_prefix                 = optional(string)
#     destination_address_prefixes               = optional(list(string))
#     destination_application_security_group_ids = optional(list(string))
#     destination_port_range                     = optional(string)
#     destination_port_ranges                    = optional(list(string))
#     description                                = optional(string)
#   }))
#   default     = []
#   description = "List of objects that represent the configuration of each outbound rule."
# }