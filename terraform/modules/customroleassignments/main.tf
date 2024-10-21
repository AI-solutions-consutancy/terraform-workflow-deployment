


resource "azurerm_role_definition" "custome_role" {
  name        = var.customer_role_name
  scope       = var.scope_id
  description = "This is a custom role created via Terraform"

  permissions {
    actions     = ["*"]
    not_actions = []
  }

  assignable_scopes = [
    "/subscriptions/94ea13c7-4cec-4c76-8a90-1a7815cc0c51/resourceGroups/rg-ai-dev"                              # /subscriptions/00000000-0000-0000-0000-000000000000
  ]
}