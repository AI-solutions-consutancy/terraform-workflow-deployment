variable "name" {
  type = string  
}

variable "resource_group_name" {
  type = string 
}
 
variable "account_replication_type" {
  type = string
}

variable "account_tier" {
  type = string
}

variable "location" {
  type = string
} 

variable "public_network_access_enabled" {
  type = bool
  description = "To enable public network access"  
}

variable "tags" {
  type = map(string)
  description = "List of tags to apply to resources"
  default = {}
}