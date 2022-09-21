# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip

resource "azurerm_public_ip" "azure-public_ip-1" {
  name                         = var.az_public_ip_1_name
  location                     = var.az_location
  resource_group_name          = var.az_resource_group_name
  allocation_method            = var.az_public_ip_1_type
  sku                          = var.az_public_ip_1_sku
  depends_on                   = [azurerm_resource_group.azure-rg]

tags = {
    "ResourceType" = "Resrouce Group"
    "Evironment"   = var.az_tag_environment
  }
}
