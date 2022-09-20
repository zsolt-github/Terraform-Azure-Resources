# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network

data "azurerm_virtual_network" "data-virtual_network" {
  name                = var.az_virtual_network_name
  resource_group_name = var.az_resource_group_name
  depends_on  = [azurerm_virtual_network.azure-vnet-practice]
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet

data "azurerm_subnet" "data-subnet_1" {
  name                 = var.az_subnet_1_name
  virtual_network_name = var.az_virtual_network_name
  resource_group_name  = var.az_resource_group_name
  depends_on           = [azurerm_subnet.azure-subnet-1-practice]
}

data "azurerm_subnet" "data-subnet_2" {
  name                 = var.az_subnet_2_name
  virtual_network_name = var.az_virtual_network_name
  resource_group_name  = var.az_resource_group_name
  depends_on           = [azurerm_subnet.azure-subnet-2-practice]
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/network_security_group

data "azurerm_network_security_group" "data-nsg_1" {
  name                = var.az_nsg_1_name
  resource_group_name = var.az_resource_group_name
  depends_on          = [azurerm_network_security_group.azure-nsg-1-practice]
}


















