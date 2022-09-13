# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group

resource "azurerm_network_security_group" "azure-nsg-practice" {
  name                = var.az_nsg_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name

  security_rule {
    name                       = "Inbound - HTTPS"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "443"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    "ResourceType" = "Virtual Network"
    "Environment"  = "Practice"
  }
}