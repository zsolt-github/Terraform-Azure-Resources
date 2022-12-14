# Azure Environment postfix variable
az_env_postfix     = "Demo-TF"
az_tag_environment = "Demo"



# Azure main variables
az_location            = "UKWest"
az_resource_group_name = "RG-Demo-TF"

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
az_nsg_4_name = "NSG-4-Demo-TF"



# Azure Network Interfaces variables
az_net_int-1 ="NI-1-Demo-TF"
az_net_int-2 ="NI-2-Demo-TF"



# Azure Public IP variables
az_public_ip_1_name = "PIP-1-Demo-TF"
az_public_ip_1_type = "Dynamic"
az_public_ip_1_sku  = "Basic"



# Azure Virtual Machines variable
az_windows_virtual_machine_1_name         = "VM-1-Win-Demo-TF"
az_linux_virtual_machine_1_name           = "VM-1-Linux-Demo-TF"
az_virtual_machine_1_size                 = "Standard_B2s"
az_virtual_machine_1_admin_user_name      = "admin"
az_virtual_machine_1_admin_user_password  = "Passwords"
az_linux_virtual_machine_1_public_key     = ".ssh/id_rsa.pub"
az_virtual_machine_1_storage_account_type = "StandardSSD_LRS"



# Azure Storage variables
az_storage_account_1_name             = "sa1demotf"
az_storage_account_1_account_tier     = "Standard"
az_storage_account_1_kind             = "StorageV2"
az_storage_account_1_replication_type = "LRS"
az_storage_account_1_acces_tier       = "Hot"
az_storage_account_1_min_tls_version  = "TLS_1_2"

az_storage_conainer_1_name            = "sc-1-demo-tf"
az_storage_container_1_access_type    = "blob"

az_storage_share_1_name               = "sd-1-demo-tf"
az_storage_share_1_access_tier        = "Hot"


# Azure Key Vault variables
az_key_vault_name = "KV-Demo-TF"
az_key_vault_sku  = "standard"



# Azure Virtual Machine Scale Set variables
az_virtual_machine_scale_set_name                 = "VMSS-Demo-TF"
az_virtual_machine_scale_set_sku                  = "Standard_B2s"
az_virtual_machine_scale_set_instances            = 2
az_virtual_machine_scale_set_admin_user_name      = "adminuser"
az_virtual_machine_scale_set_public_key           =  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com"
az_virtual_machine_scale_set_storage_account_type = "StandardSSD_LRS"



# Azure Virtual Machine Scale Set Auto Scale Config variables
az_virtual_machine_scale_set_auto_scale_name = "VMSSASC-Demo-TF"
az_virtual_machine_scale_set_upgrade_mode    = "Rolling"



# Azure Load Balancer variables
az_load_balancer_name = "LB-Demo-TF"


# Azure User Assigned variables
az_user_assigned_identity_1 = "UAI-Demo-1"


# Azure Container Registry
acr_name = "zfclouddemo001"

