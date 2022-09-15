# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group

resource "azurerm_resource_group" "azure-rg-practice" {
  name     = var.az_resource_group_name
  location = var.az_location

  tags = {
    "ResourceType" = "Resrouce Group"
    "Evironment"   = "Practice"
  }
}