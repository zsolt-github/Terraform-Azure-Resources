# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine_scale_set

resource "azurerm_linux_virtual_machine_scale_set" "azure-vmss" {
  name                = var.az_virtual_machine_scale_set_name
  resource_group_name = var.az_resource_group_name
  location            = var.az_location
  sku                 = var.az_virtual_machine_scale_set_sku
  instances           = var.az_virtual_machine_scale_set_instances
  admin_username      = var.az_virtual_machine_scale_set_admin_user_name

  admin_ssh_key {
    username   = var.az_virtual_machine_scale_set_admin_user_name
    public_key = var.az_virtual_machine_scale_set_public_key
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_disk {
    storage_account_type = var.az_virtual_machine_scale_set_storage_account_type
    caching              = "ReadWrite"
  }

  network_interface {
    name    = "example"
    primary = true
    network_security_group_id = azurerm_network_security_group.azure-nsg-3.id
    
    ip_configuration {
      name                      = "Internal_IP-1"
      primary                   = true
      subnet_id                 = azurerm_subnet.azure-subnet-2.id
    }
  }

  # public_ip_address {
        
  # }

  identity {
    type = "SystemAssigned"
  }

tags = {
    "ResourceType" = "Virtual Machine Scale Set"
    "Evironment"   = var.az_tag_environment
  }
}