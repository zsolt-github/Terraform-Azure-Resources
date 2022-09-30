# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity

resource "azurerm_user_assigned_identity" "azure-user_assigned_identity-1" {
  name                = var.az_user_assigned_identity_1
  resource_group_name = var.az_resource_group_name
  location            = var.az_location
  
  depends_on          = [azurerm_resource_group.azure-rg]

  tags = {
    "ResourceType" = "User Assigned Identiy"
    "Evironment"   = var.az_tag_environment
  }

}