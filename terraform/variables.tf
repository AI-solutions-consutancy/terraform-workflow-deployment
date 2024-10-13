variable "location" {
  type    = string
  default = "uksouth"
}

variable "resource_group_name" {
  type    = string
  default = "rg-ai-dev"
}

variable "env" {
  type        = string
  description = "environments dev/sit/prod"
  default     = "dev"
}


variable "application_name" {
  type        = string
  description = "the name of application that is deployed"
  default     = "ai"
}

variable "tags" {
  type        = map(string)
  description = "List of tags to apply to resources"
  default = {
    application = "ai"
    environment = "dev"
    level       = "5"
    ai_platform = "Azure"
  }
}

variable "subnets" {
  type        = map(list(string))
  description = "Subnets to be deployed in Vnet"
  default = {
    "subnet1-ai-dev" = ["10.0.1.0/24"]
    "subnet2-ai-dev" = ["10.0.2.0/24"]
    "subnet3-ai-dev" = ["10.0.3.0/24"]
    "subnet4-ai-dev" = ["10.0.4.0/24"]
  }
}


# variable "vnet_instances" {             # - Map of lists
#   type = map(list(string))
#   description = "List of vnet instances"
#   default = {
#     vnet4-ai-dev = ["10.0.0.0/16"]
#     vnet6-ai-dev = ["10.0.0.0/24"]
#   }
# }

# variable "vnet_instances" {             # - Map of string = https://spacelift.io/blog/terraform-map-variable
#   type = map(string)
#   description = "List of vnet instances"
#   default = {
#     vnet4-ai-dev = "10.0.0.0/16"
#     vnet6-ai-dev = "10.0.0.0/24"
#   }
# }

# variable "vnet_instances" {                   # deployed with variable type = set(string)                   
#   description = "Vnet INstances"
#   type = set(string)
#   default = [ "vnet1-ai-dev", "vnet3-ai-dev" ] 
# }

# variable "vnet_count" {                       ##COUNT META ARGUMENT EXAMPLE
#   type = string
#   description = "No of Virtual Networks"
#   default = "2"
# }


