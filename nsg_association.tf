# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association

resource "azurerm_subnet_network_security_group_association" "azure-nsg_1_association" {
  subnet_id                 = azurerm_subnet.azure-subnet-1.id
  network_security_group_id = azurerm_network_security_group.azure-nsg-1.id
  depends_on                = [azurerm_subnet.azure-subnet-1]
}

resource "azurerm_subnet_network_security_group_association" "azure-nsg_2_association" {
  subnet_id                 = azurerm_subnet.azure-subnet-2.id
  network_security_group_id = azurerm_network_security_group.azure-nsg-2.id
  depends_on                = [azurerm_subnet.azure-subnet-2]
}
