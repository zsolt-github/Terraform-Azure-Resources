resource "azurerm_storage_container" "azure-storage_conainer-1" {
  name                  = var.az_storage_conainer_1_name
  storage_account_name  = var.az_storage_account_1_name
  container_access_type = var.az_storage_container_1_access_type

  depends_on            = [azurerm_storage_account.azure-storage_account-1]
}