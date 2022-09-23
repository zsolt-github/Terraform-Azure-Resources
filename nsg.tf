# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group

resource "azurerm_network_security_group" "azure-nsg-1" {
  name                = var.az_nsg_1_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  depends_on          = [azurerm_resource_group.azure-rg]

  security_rule {
    name                       = "Inbound - RDP"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    "ResourceType" = "Network Security Group"
    "Environment"  = var.az_tag_environment
  }
}

resource "azurerm_network_security_group" "azure-nsg-2" {
  name                = var.az_nsg_2_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  depends_on          = [azurerm_resource_group.azure-rg]

  security_rule {
    name                       = "Inbound - HTTPS"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
   }

  tags = {
    "ResourceType" = "Network Security Group"
    "Environment"  = var.az_tag_environment
  }
}

resource "azurerm_network_security_group" "azure-nsg-3" {
  name                = var.az_nsg_3_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  depends_on          = [azurerm_resource_group.azure-rg]

  security_rule {
    name                       = "Inbound - SMB"
    priority                   = 120
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "445"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    "ResourceType" = "Network Security Group"
    "Environment"  = var.az_tag_environment
  }
}

resource "azurerm_network_security_group" "azure-nsg-4" {
  name                = var.az_nsg_4_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  depends_on          = [azurerm_resource_group.azure-rg]

  security_rule {
    name                       = "Inbound - SSH"
    priority                   = 115
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    "ResourceType" = "Network Security Group"
    "Environment"  = var.az_tag_environment
  }
}