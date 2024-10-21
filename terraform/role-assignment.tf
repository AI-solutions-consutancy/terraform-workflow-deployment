

# module "roleassignments" { # Assing the role to User/Groups/SP in Entra ID 
#   source = "./modules/roleassignments"

#   scope_id             = "/subscriptions/94ea13c7-4cec-4c76-8a90-1a7815cc0c51" # @ subscription level
#   role_definition_name = "Contributor"
#   principal_id         = "ef3a69df-43d7-4988-aef1-119e677a6c05"
# }

# module "roleassignments1" {
#   source = "./modules/roleassignments"

#   scope_id             = "/subscriptions/94ea13c7-4cec-4c76-8a90-1a7815cc0c51/resourceGroups/rg-ai-dev" # @ resource group level
#   role_definition_name = "Reader"
#   principal_id         = "ef3a69df-43d7-4988-aef1-119e677a6c05"
# }

# module "roleassignments2" {
#   source = "./modules/roleassignments"

#   scope_id             = "/subscriptions/94ea13c7-4cec-4c76-8a90-1a7815cc0c51/resourceGroups/rg-ai-dev/providers/Microsoft.Network/virtualNetworks/vnet-ai-dev"
#   role_definition_name = "Contributor"
#   principal_id         = "ef3a69df-43d7-4988-aef1-119e677a6c05"
# }

# module "roleassignments3" {
#   source = "./modules/roleassignments"

#   scope_id             = "/subscriptions/94ea13c7-4cec-4c76-8a90-1a7815cc0c51/resourceGroups/rg-ai-dev"
#   role_definition_name = "Storage Blob Data Contributor"
#   principal_id         = "630dc614-28a0-496a-8bc9-5a6a8799fbf6"
# }

