resource "azurerm_storage_management_policy" "azure-storage_management_policy-1" {
  storage_account_id = azurerm_storage_account.azure-storage_account-1.id

  rule {
    name    = "Azure-Storage_management_policy-Rule1"
    enabled = false
    
    filters {
      prefix_match = ["container1/prefix1"]
      blob_types   = ["blockBlob"]
    }
        
    actions {
      base_blob {
        tier_to_cool_after_days_since_modification_greater_than    = 14
        tier_to_archive_after_days_since_modification_greater_than = 60
        # delete_after_days_since_modification_greater_than        = 90
      }
      snapshot {
        change_tier_to_cool_after_days_since_creation    = 14
        change_tier_to_archive_after_days_since_creation = 30
        # delete_after_days_since_creation_greater_than  = 90
      }
    }
  }

  rule {
    name    = "Azure-Storage_management_policy-Rule2"
    enabled = false
    
    filters {
      prefix_match = ["container2/prefix1", "container2/prefix2"]
      blob_types   = ["blockBlob"]
    }
    
    actions {
      base_blob {
        tier_to_cool_after_days_since_modification_greater_than    = 14
        tier_to_archive_after_days_since_modification_greater_than = 60
        # delete_after_days_since_modification_greater_than        = 90
      }
      snapshot {
        change_tier_to_cool_after_days_since_creation    = 10
        change_tier_to_archive_after_days_since_creation = 30
        # delete_after_days_since_creation_greater_than  = 90
      }
      version {
        change_tier_to_archive_after_days_since_creation = 9
        change_tier_to_cool_after_days_since_creation    = 90
        delete_after_days_since_creation                 = 3
      }
    }
  }
}