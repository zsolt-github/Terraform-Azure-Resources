# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/user_assigned_identity


output "output-user_assigend_identity_1_id" {
  value = data.azurerm_user_assigned_identity.data-user_assigned_identity-1.id
}

output "output-user_assigend_identity_1_client_id" {
  value = data.azurerm_user_assigned_identity.data-user_assigned_identity-1.client_id
}

output "output-user_assigend_identity_1_principal_id" {
  value = data.azurerm_user_assigned_identity.data-user_assigned_identity-1.principal_id
}



/*


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/public_ip

output "output-public_ip_1_address" {
  value = data.azurerm_public_ip.data-public_ip_1.ip_address
}


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

*/