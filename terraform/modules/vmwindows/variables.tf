
variable "resource_group_name" {
  type = string 
}

variable "location" {
  type = string
} 


variable "subnet_id" {
    description = "Subnet to place the VM into"
}

variable "key_vault_id" {
    description = "ID of the key vault to hold the VM admin password"
}

variable "vm_name" {
    type = string  
}


variable "tags" {
  type = map(string)
  description = "List of tags to apply to resources"
  default = {}
}