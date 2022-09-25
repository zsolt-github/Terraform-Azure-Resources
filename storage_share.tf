resource "azurerm_storage_share" "azure-storage_share-1" {
  name                 = var.az_storage_share_1_name
  storage_account_name = var.az_storage_account_1_name
  access_tier          = var.az_storage_share_1_access_tier
  enabled_protocol     = "SMB"
  quota                = 1

  acl {
    id = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"

    access_policy {
      permissions = "rwdl"
      start       = "2022-09-25T00:00:00.0000000Z"
      expiry      = "2023-09-24T23:59:59.0000000Z"
    }
  }
}