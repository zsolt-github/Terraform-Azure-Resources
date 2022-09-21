# Azure Environment postfix variable
az_env_postfix     = "Demo-TF"
az_tag_environment = "Demo"


# Azure main variables
az_resource_group_name = "RG-Demo-TF"
az_location = "UKWest"

az_virtual_network_name          = "VNET-Demo-TF"
az_virtual_network_address_space = "10.10.0.0/16"

az_subnet_1_name           = "SN-1-Demo-TF"
az_subnet_1_address_prefix = "10.10.1.0/24"

az_subnet_2_name           = "SN-2-Demo-TF"
az_subnet_2_address_prefix = "10.10.2.0/24"

az_subnet_3_name           = "SN-3-Demo-TF"
az_subnet_3_address_prefix = "10.10.3.0/24"



# Azure Network Security Group variables
az_nsg_1_name = "NSG-1-Demo-TF"
az_nsg_2_name = "NSG-2-Demo-TF"
az_nsg_3_name = "NSG-3-Demo-TF"


# Azure Network Interfaces variables
az_net_int-1 ="NI-1-Demo-TF"
az_net_int-2 ="NI-2-Demo-TF"


# Azure Public IP variables
az_public_ip_1_name = "PIP-1-Demo-TF"
az_public_ip_1_type = "Dynamic"
az_public_ip_1_sku  = "Basic"


# Azure Virtual Machines variable
az_virtual_machine_1_name                 = "VM-1-Demo-TF"
az_virtual_machine_1_size                 = "Standard_B2s"
az_virtual_machine_1_admin_user_name      = "admin"
az_virtual_machine_1_admin_user_password  = "Passwords"
az_virtual_machine_1_storage_account_type = "StandardSSD_LRS"


# Azure Storage Accounts variables
az_storage_account_1_name           = "sa1demotf"
az_storage_account_1_kind           = "Storagev2"
az_storage_account_1_tier           = "Standard"
az_storage_account_replication_type = "LRS"


# Azure Key Vault variables
az_key_vault_name = "KV-Demo-TF"
az_key_vault_sku  = "standard"



# Azure Container Registry
acr_name = "zfclouddemo001"

