# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network

# Specifying a Virtual Network without Subnet(s)

resource "azurerm_virtual_network" "azure-vnet-practice" {
  name                = var.az_virtual_network_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  address_space       = [var.az_virtual_network_address_space]
  # dns_servers         = ["10.0.0.4", "10.0.0.5"]
  depends_on          = [azurerm_resource_group.azure-rg-practice]

  tags = {
    "ResourceType" = "Virtual Network"
    "Environment"  = "Practice"
  }  
}



/*
# Specifying a Virtual Network seperately with Subnet(s)

resource "azurerm_virtual_network" "azure-vnet-practice" {
  name                = var.az_virtual_network_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  address_space       = [var.az_virtual_network_address_space]
  # dns_servers         = ["10.0.0.4", "10.0.0.5"]
  depends_on          = [azurerm_resource_group.azure-rg-practice]

  subnet {
    name           = var.az_subnet_1_name
    address_prefix = var.az_subnet_1_address_prefix
    security_group = azurerm_network_security_group.azure-nsg-1-practice.id
  }

  subnet {
    name           = var.az_subnet_2_name
    address_prefix = var.az_subnet_2_address_prefix
    security_group = azurerm_network_security_group.azure-nsg-2-practice.id
  }

  subnet {
    name           = var.az_subnet_3_name
    address_prefix = var.az_subnet_3_address_prefix
  }

  tags = {
    ResourceType = "Virtual Network"
    Environment  = "Practice"
  }
}
*/