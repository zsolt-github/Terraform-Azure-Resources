# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine

resource "azurerm_windows_virtual_machine" "azure-windows_virtual_machine-1" {
  name                = var.az_windows_virtual_machine_1_name
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
    storage_account_type = var.az_virtual_machine_1_storage_account_type
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-Datacenter"
    version   = "latest"
  }
  
/* 
  source_image_reference {
    publisher = "bitnami"
    offer     = "jenkins"
    sku       = "1-650"
    version   = "latest"
  }
*/

  identity {
    type = "SystemAssigned"
  }

  tags = {
    "ResourceType" = "Virtual Machine"
    "Environment"  = var.az_tag_environment
  }
}