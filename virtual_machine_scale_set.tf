# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine_scale_set

resource "azurerm_linux_virtual_machine_scale_set" "azure-vmss" {
  name                = var.az_virtual_machine_scale_set_name
  resource_group_name = var.az_resource_group_name
  location            = var.az_location
  sku                 = var.az_virtual_machine_scale_set_sku
  instances           = var.az_virtual_machine_scale_set_instances
  admin_username      = var.az_virtual_machine_scale_set_admin_user_name
  upgrade_mode        = var.az_virtual_machine_scale_set_upgrade_mode
  depends_on          = [azurerm_resource_group.azure-rg, azurerm_subnet.azure-subnet-1, azurerm_public_ip.azure-public_ip-1, azurerm_lb_rule.azure-load_ballancer-rule-1]

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
    name                      = "Network_Interface-1"
    primary                   = true
    network_security_group_id = azurerm_network_security_group.azure-nsg-4.id
    
    ip_configuration {
      name                                   = "Internal_IP-1"
      primary                                = true
      subnet_id                              = azurerm_subnet.azure-subnet-1.id
      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.azure-load_ballancer-backend_pool.id]
      load_balancer_inbound_nat_rules_ids    = [azurerm_lb_nat_pool.azure-load_ballancer-nat_pool.id]
    }
  }

/*
  network_interface {
    name                      = "Network_Interface-2"
    network_security_group_id = azurerm_network_security_group.azure-nsg-4.id
    
    ip_configuration {
      name      = "Internal_IP-2"
      primary   = true
      subnet_id = azurerm_subnet.azure-subnet-2.id
    }
  }
*/

  identity {
    type = "SystemAssigned"
  }

  rolling_upgrade_policy {
    max_batch_instance_percent              = 25
    max_unhealthy_instance_percent          = 25
    max_unhealthy_upgraded_instance_percent = 10
    pause_time_between_batches              = "PT15M"
  }

#  boot_diagnostics {
#    storage_account_uri = azurerm_storage_account.main.primary_blob_endpoint
#  }

tags = {
    "ResourceType" = "Virtual Machine Scale Set"
    "Evironment"   = var.az_tag_environment
  }
}