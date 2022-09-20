# https://github.com/hashicorp/terraform-provider-azurerm/blob/main/examples/virtual-machines/windows/vm-role-assignment/main.tf

resource "azurerm_role_assignment" "azure-role_assignment-1" {
  scope                = azurerm_storage_account.azure-storage_account-1.id
  role_definition_name = "Reader"
  principal_id         = azurerm_windows_virtual_machine.azure-virtual_machine-1.identity[0].principal_id
  depends_on           = [azurerm_storage_account.azure-storage_account-1]
  depends_on           = [azurerm_windows_virtual_machine.azure-virtual_machine-1]
}