# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association

resource "azurerm_subnet_network_security_group_association" "azure-nsg_1_association-practice" {
  subnet_id                 = azurerm_subnet.azure-subnet-1-practice.id
  network_security_group_id = azurerm_network_security_group.azure-nsg-1-practice.id
  depends_on                = [azurerm_subnet.azure-subnet-1-practice]
}

resource "azurerm_subnet_network_security_group_association" "azure-nsg_2_association-practice" {
  subnet_id                 = azurerm_subnet.azure-subnet-2-practice.id
  network_security_group_id = azurerm_network_security_group.azure-nsg-2-practice.id
  depends_on                = [azurerm_subnet.azure-subnet-2-practice]
}
