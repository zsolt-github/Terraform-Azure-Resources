# https://github.com/hashicorp/terraform-provider-azurerm/blob/main/examples/virtual-machines/windows/vm-role-assignment/main.tf

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

resource "azurerm_storage_account" "azure-storage_account-1" {
  name                     = var.az_storage_account_1_name
  resource_group_name      = var.az_resource_group_name
  location                 = var.az_location
  
  account_tier                    = var.az_storage_account_1_account_tier
  account_kind                    = var.az_storage_account_1_kind
  account_replication_type        = var.az_storage_account_1_replication_type
  enable_https_traffic_only       = true
  access_tier                     = var.az_storage_account_1_acces_tier
  # min_tls_version                 = var.az_storage_account_1_min_tls_version
  # allow_nested_items_to_be_public = true

  depends_on               = [azurerm_resource_group.azure-rg]

/*
 network_rules {
    default_action             = "Deny"
    ip_rules                   = ["100.0.0.1"]
    virtual_network_subnet_ids = [azurerm_subnet.example.id]
  }
*/

  tags = {
    "ResourceType" = "Storage Account"
    "Evironment"   = var.az_tag_environment
  }
}