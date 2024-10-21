variable "role_definition_name" {
    type        = string
    description = "The name of the Role to assign to the chosen Scope."
}


variable "scope_id" {
  type        = string
  description = "The ID of the scope where the role should be assigned."
}

variable "principal_id" {
  type        = string
  description = "The ID of the principal that is to be assigned the role at the given scope. Can be User, Group or SPN."
}
