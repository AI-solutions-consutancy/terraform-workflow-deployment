resource "random_password" "vm_password" {
    length             = 16
    special            = true
    override_special   = "!#$%&*()-_=+{}[]<>:?"  
}

resource "azurerm_key_vault_secret" "admin_password" {
    name                = "vm345dev"
    value               = random_password.vm_password.result
    key_vault_id        = var.key_vault_id
}

resource "azurerm_network_interface" "nic" {
  name                  = "vm345dev-nic"
  location              = var.location
  resource_group_name   = var.resource_group_name

  ip_configuration {
    name                = "vm345dev-nic"
    subnet_id           = var.subnet_id
    private_ip_address_allocation = "Dynamic"
}
  lifecycle {
  ignore_changes = [
    tags
    ]
 }
}

resource "azurerm_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_DS1_v2"
  license_type          = "Windows_Server"
  tags                  = var.tags
 
  os_profile_windows_config {
    provision_vm_agent = true
  }
  
 identity {
     type = "SystemAssigned"
   }

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
  
  storage_os_disk {
    name              = "myosdisk1" 
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "hostname"
    admin_username = "azureadmin"
    admin_password = random_password.vm_password.result
  }
}


