# https://github.com/hashicorp/terraform-provider-azurerm/blob/main/examples/virtual-machines/windows/vm-role-assignment/main.tf

resource "azurerm_storage_account" "azure-storage_account-1" {
  name                     = var.az_storage_account_1_name
  resource_group_name      = var.az_resource_group_name
  location                 = var.az_location
  account_tier             = var.az_storage_account_1_tier
  account_replication_type = var.az_storage_account_replication_type
  depends_on               = [azurerm_resource_group.azure-rg-practice]
}