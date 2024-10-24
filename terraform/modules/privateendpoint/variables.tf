variable "resource_group_name" {
  type = string 
}

variable "location" {
  type = string
} 

variable "subnet_id" {
    type = string  
}

variable "pendpoint_name" {
    type = string  
}


variable "tags" {
  type = map(string)
  description = "List of tags to apply to resources"
  default = {}
}

variable "resource_id" {
  description = "The ID of the resource that the new Private Endpoint will be assigned to."
  type        = string
  default     = null
}
