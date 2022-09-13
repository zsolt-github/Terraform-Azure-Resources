resource "azurerm_subnet" "azure-subnet-practice" {
  name                 = var.az_subnet_name
  resource_group_name  = var.az_resource_group_name
  virtual_network_name = var.az_virtual_network_name
  address_prefixes     = [var.az_subnet_address_prefix]
  depends_on           = [azurerm_virtual_network.azure-vnet-practice]
}