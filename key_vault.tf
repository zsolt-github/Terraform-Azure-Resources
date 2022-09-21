# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault

resource "azurerm_key_vault" "azure-key_vault" {
  name                        = var.az_key_vault_name
  location                    = var.az_location
  resource_group_name         = var.az_resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "premium"
  enabled_for_disk_encryption = true
  purge_protection_enabled    = true
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy

resource "azurerm_key_vault_access_policy" "azure-key_vault_access_poicy-1" {
  key_vault_id = azurerm_key_vault.azure-key_vault.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id

  key_permissions = [
    "Create",
    "Delete",
    "Get",
    "Update",
  ]

  secret_permissions = [
    "Get",
    "Delete",
    "Set",
  ]
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_key

resource "azurerm_key_vault_key" "azure-key_vault_key-1" {
  name         = "azurekeyvaultkey-1"
  key_vault_id = azurerm_key_vault.azure-key_vault.id
  key_type     = "RSA"
  key_size     = 2048

  key_opts = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]

  depends_on = [azurerm_key_vault_access_policy.azure-key_vault_access_poicy-1]
}