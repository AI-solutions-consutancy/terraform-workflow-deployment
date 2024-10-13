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