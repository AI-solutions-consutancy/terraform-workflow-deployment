variable "name" {
  type = string  
}

variable "resource_group_name" {
  type = string 
}
 
variable "storage_account_replication_type" {
  type = string
}

variable "storage_account_tier" {
  type = string
}

variable "location" {
  type = string
} 

variable "managed_identity_type" {
  description = "The type of Managed Identity which should be assigned to the Linux Virtual Machine. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`"
  default     = "SystemAssigned"
  type        = string
}


