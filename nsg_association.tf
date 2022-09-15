/*
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association

resource "azurerm_subnet_network_security_group_association" "azure-nsg_association-practice" {
  subnet_id                 = var.azurerm_subnet.azure-subnet-1-practice.id
  network_security_group_id = var.azurerm_network_security_group.azure-nsg-1-practice.id
}
*/