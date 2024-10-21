variable "resource_group_name" {
  type = string 
}

variable "location" {
  type = string
} 

variable "keyvault_name" {
    type = string
}

variable "keyvault_sku_name" {
    type = string
}

variable "tags" {
  type = map(string)
  description = "List of tags to apply to resources"
  default = {}
}

variable "soft_delete_retention_days" {
  type        = number
  default     = 7
  description = "The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 days."
}

variable "purge_protection_enabled" {
  type        = bool
  default     = false
  description = "Is Purge Protection enabled for this Key Vault?"
}

variable "enabled_for_deployment" {
  type        = bool
  default     = false
  description = "Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault."
}

variable "enabled_for_disk_encryption" {
  type        = bool
  default     = false
  description = "Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys."
}

variable "enabled_for_template_deployment" {
  type        = bool
  default     = false
  description = "Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault."
}

variable "enable_rbac_authorization" {
  type        = bool
  default     = false
  description = "Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions."
}

variable "access_policies" {
  type = list(object({
    object_id               = string
    application_id          = optional(string)
    key_permissions         = optional(list(string), [])
    secret_permissions      = optional(list(string), [])
    certificate_permissions = optional(list(string), [])
    storage_permissions     = optional(list(string), [])
  }))
  default     = []
  description = "List of objects that represent the configuration of each access policies."
}

variable "secrets" {
  type = list(object({
    name            = string
    value           = string
    content_type    = optional(string)
    not_before_date = optional(string)
    expiration_date = optional(string)
  }))
  default     = []
  description = "List of objects that represent the configuration of each secrect."
}
