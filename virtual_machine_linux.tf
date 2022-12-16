# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine

resource "azurerm_linux_virtual_machine" "azure-linux_virtual_machine-1" {
  name                = var.az_linux_virtual_machine_1_name
  resource_group_name = var.az_resource_group_name
  location            = var.az_location
  size                = var.az_virtual_machine_1_size
  depends_on          = [azurerm_network_interface.azure-net_int-1, azurerm_storage_account.azure-storage_account-1]
  
  network_interface_ids           = [azurerm_network_interface.azure-net_int-1.id]
  computer_name                   = var.az_linux_virtual_machine_1_computer_name
  admin_username                  = var.az_virtual_machine_1_admin_user_name
  disable_password_authentication = true

  os_disk {
    name                 = "OSDisk"
    caching              = "ReadWrite"
    storage_account_type = var.az_virtual_machine_1_storage_account_type
  }

  source_image_reference {
    publisher = "bitnami"
    offer     = "jenkins"
    sku       = "1-650"
    version   = "latest"
  }

  plan {
    name      = "1-650"
    product   = "jenkins"
    publisher = "bitnami"
  }

  admin_ssh_key {
    username   = var.az_virtual_machine_1_admin_user_name
    public_key = tls_private_key.ssh_key-1.public_key_openssh
    #public_key = file(var.az_linux_virtual_machine_1_public_key)
  }

  #boot_diagnostics {
  #  storage_account_uri = azurerm_storage_account.azure-storage_account-1.primary_blob_endpoint
  #}

  identity {
    type = "SystemAssigned"
  }

  tags = {
    "ResourceType" = "Virtual Machine"
    "Environment"  = var.az_tag_environment
  }
}