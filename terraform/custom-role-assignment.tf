module "customroleassignments" {
  source = "./modules/customroleassignments"

  customer_role_name = "vnet-contributor"
  scope_id           = "/subscriptions/94ea13c7-4cec-4c76-8a90-1a7815cc0c51/resourceGroups/rg-ai-dev"
}

