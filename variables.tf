# Variables for the Azure Resource Group

variable "az_resource_group_name" {
    type = string
    description = "Resource Group name in Azure."
}

variable "az_location" {
    type = string
    description = "Location of the resources in Azure."
}


# Variables for the Azure Virtual Network

variable "az_virtual_network_name" {
    type = string
    description = "Name of the VLAN in Azure."
}

variable "az_virtual_network_address_space" {
    type = string
    description = "The address space of the VLAN in Azure."
}


# Variables for Azure the Subnet

variable "az_subnet_name" {
    type = string
    description = "Name of the Subnet in Azure."
}

variable "az_subnet_address_prefix" {
    type = string
    description = "The address space of the Subnet in Azure."
}


# Variable for Azure Network Security Groupe
variable "az_nsg_name" {
    type = string
    description = "Name of the Azure Network Security Group."
}


# Variables for the Azure Container Registry

variable "acr_name" {
    type = string
    description = "Azure Container Registry name."
}


