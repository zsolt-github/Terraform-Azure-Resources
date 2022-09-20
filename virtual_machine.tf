
resource "azurerm_windows_virtual_machine" "azure-virtual_machine-1" {
  name                = var.az_virtual_machine_1_name
  resource_group_name = var.az_resource_group_name
  location            = var.az_location
  size                = var.az_virtual_machine_1_size
  admin_username      = var.az_virtual_machine_1_admin_user_name
  admin_password      = var.az_virtual_machine_1_admin_user_password
  network_interface_ids = [
    azurerm_network_interface.azure-net_int-1.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-Datacenter"
    # sku       = "2022-Datacenter"
    version   = "latest"
  }
  
  identity {
    type = "SystemAssigned"
  }

  tags = {
    "ResourceType" = "Virtual Machine"
    "Environment"  = "Practice"
  }
}