# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/virtual_network

output "output-virtual_network_id" {
  value = data.azurerm_virtual_network.data-virtual_network.id
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet

output "output-subnet_1_id" {
  value = data.azurerm_subnet.data-subnet_1.id
}

output "output-subnet_2_id" {
  value = data.azurerm_subnet.data-subnet_2.id
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/network_security_group

output "output-nsg_1_id" {
  value = data.azurerm_network_security_group.data-nsg_1.id
}

output "output-nsg_1_location" {
  value = data.azurerm_network_security_group.data-nsg_1.location
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/public_ip

output "output-public_ip_1_address" {
  value = data.azurerm_public_ip.data-public_ip_1.ip_address
}






