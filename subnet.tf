/*
resource "azurerm_subnet" "azure-subnet-1-practice" {
  name                 = var.az_subnet_1_name
  resource_group_name  = var.az_resource_group_name
  virtual_network_name = var.az_virtual_network_name
  address_prefixes     = [var.az_subnet_1_address_prefix]
  depends_on           = [azurerm_virtual_network.azure-vnet-practice]
}

resource "azurerm_subnet" "azure-subnet-2-practice" {
  name                 = var.az_subnet_2_name
  resource_group_name  = var.az_resource_group_name
  virtual_network_name = var.az_virtual_network_name
  address_prefixes     = [var.az_subnet_2_address_prefix]
  depends_on           = [azurerm_virtual_network.azure-vnet-practice]
}

resource "azurerm_subnet" "azure-subnet-3-practice" {
  name                 = var.az_subnet_3_name
  resource_group_name  = var.az_resource_group_name
  virtual_network_name = var.az_virtual_network_name
  address_prefixes     = [var.az_subnet_3_address_prefix]
  depends_on           = [azurerm_virtual_network.azure-vnet-practice]
}
*/