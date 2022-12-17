terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "~>4.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~>3.0"
    }
  }
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    key_vault {
      purge_soft_delete_on_destroy       = false
      purge_soft_deleted_keys_on_destroy = false
    }
  }
provider "random" {}
provider "tls" {}
provider "null" {}
}
