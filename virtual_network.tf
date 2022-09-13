resource "azurerm_virtual_network" "azure-vnet-practice" {
  name                = var.az_virtual_network_name
  resource_group_name = var.az_resource_group_name
  location            = var.az_location
  address_space       = [var.az_virtual_network_address_space]
  depends_on          = [azurerm_resource_group.azure-rg-practice]

  tags = {
    "ResourceType" = "Virtual Network"
    "Environment"  = "test"
  }  
}