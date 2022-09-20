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


# Variables for Azure Network Security Groups

variable "az_nsg_1_name" {
    type = string
    description = "Name of Azure Network Security Group 1."
}

variable "az_nsg_2_name" {
    type = string
    description = "Name of Azure Network Security Group 2."
}

variable "az_nsg_3_name" {
    type = string
    description = "Name of Azure Network Security Group 3."
}


# Variables for Azure Network Interface(s)

variable "az_net_int-1" {
    type = string
    description = "Name of Azure Network Interface 1."
}

variable "az_net_int-2" {
    type = string
    description = "Name of Azure Network Interface 2."
}


 #Variables for Azure Virtual Machine(s)

variable "az_virtual_machine_1_name" {
    type = string
    description = "Name of Virtual Machine 1."
}

variable "az_virtual_machine_1_size" {
    type = string
    description = "Name of Virtual Machine 1."
}

variable "az_virtual_machine_1_admin_user_name" {
    type = string
    description = "Name of the admin user for Virtual Machine 1."
}

variable "az_virtual_machine_1_admin_user_password" {
    type = string
    description = "Password of the admin user for Virtual Machine 1."
}



# Variables for the Azure Storage Account(s)

variable "az_storage_account_1_name" {
    type = string
    description = "Name for Storage Account 1."
}

variable "az_storage_account_1_tier" {
    type = string
    description = "Name for Storage Account 1."
}

variable "az_storage_account_replication_type" {
    type = string
    description = "Name for Storage Account 1."
}



# Variables for the Azure Public IP(s)

variable "az_public_ip_1_name" {
    type = string
    description = "Name for Azure Public IP 1."
}

variable "az_public_ip_1_type" {
    type = string
    description = "Type of Public IP 1."
}



# Variables for the Azure Container Registry

variable "acr_name" {
    type = string
    description = "Azure Container Registry name."
}


