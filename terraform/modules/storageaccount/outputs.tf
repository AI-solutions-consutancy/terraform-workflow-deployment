output "id" {
    description = "id of storage account"
    value = azurerm_storage_account.stg.id
}

output "name" {
    description = "name of storage account"
    value = azurerm_storage_account.stg.name  
}