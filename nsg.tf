# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group

resource "azurerm_network_security_group" "azure-nsg-1-practice" {
  name                = var.az_nsg_1_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  depends_on          = [azurerm_resource_group.azure-rg-practice]

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
    "ResourceType" = "Network Security Group"
    "Environment"  = "Practice"
  }
}

resource "azurerm_network_security_group" "azure-nsg-2-practice" {
  name                = var.az_nsg_2_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  depends_on          = [azurerm_resource_group.azure-rg-practice]

  security_rule {
    name                       = "Inbound - RDP"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "3389"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    "ResourceType" = "Network Security Group"
    "Environment"  = "Practice"
  }
}

resource "azurerm_network_security_group" "azure-nsg-3-practice" {
  name                = var.az_nsg_3_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  depends_on          = [azurerm_resource_group.azure-rg-practice]

  security_rule {
    name                       = "Inbound - SMB"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "445"
    destination_port_range     = "445"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    "ResourceType" = "Network Security Group"
    "Environment"  = "Practice"
  }
}