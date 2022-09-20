resource "azurerm_public_ip" "azur-public_ip-1" {
  name                         = var.az_public_ip_1_name
  location                     = var.az_location
  resource_group_name          = var.az_resource_group_name
  public_ip_address_allocation = var.az_public_ip_1_type
}
