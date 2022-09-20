# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet

resource "azurerm_subnet" "azure-subnet-1" {
  name                 = var.az_subnet_1_name
  resource_group_name  = var.az_resource_group_name
  virtual_network_name = var.az_virtual_network_name
  address_prefixes     = [var.az_subnet_1_address_prefix]
  depends_on           = [azurerm_virtual_network.azure-vnet]
}

resource "azurerm_subnet" "azure-subnet-2" {
  name                 = var.az_subnet_2_name
  resource_group_name  = var.az_resource_group_name
  virtual_network_name = var.az_virtual_network_name
  address_prefixes     = [var.az_subnet_2_address_prefix]
  depends_on           = [azurerm_virtual_network.azure-vnet]
}

resource "azurerm_subnet" "azure-subnet-3" {
  name                 = var.az_subnet_3_name
  resource_group_name  = var.az_resource_group_name
  virtual_network_name = var.az_virtual_network_name
  address_prefixes     = [var.az_subnet_3_address_prefix]
  depends_on           = [azurerm_virtual_network.azure-vnet]
}