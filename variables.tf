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


# Variables for the Azure Subnets

variable "az_subnet_1_name" {
    type = string
    description = "Name of Subnet 1 in Azure."
}

variable "az_subnet_1_address_prefix" {
    type = string
    description = "The address space of Subnet 1 in Azure."
}

variable "az_subnet_2_name" {
    type = string
    description = "Name of Subnet 2 in Azure."
}

variable "az_subnet_2_address_prefix" {
    type = string
    description = "The address space of Subnet 2 in Azure."
}

variable "az_subnet_3_name" {
    type = string
    description = "Name of Subnet 3 in Azure."
}

variable "az_subnet_3_address_prefix" {
    type = string
    description = "The address space of Subnet 3 in Azure."
}


# Variable for Azure Network Security Groups

variable "az_nsg_1_name" {
    type = string
    description = "Name of  Azure Network Security Group 1."
}

variable "az_nsg_2_name" {
    type = string
    description = "Name of  Azure Network Security Group 2."
}


# Variables for the Azure Container Registry

variable "acr_name" {
    type = string
    description = "Azure Container Registry name."
}


