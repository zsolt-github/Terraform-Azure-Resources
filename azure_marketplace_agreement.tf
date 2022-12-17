# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/marketplace_agreement

resource "azurerm_marketplace_agreement" "azure_marketplace-jenkins" {
  publisher = "bitnami"
  offer     = "jenkins"
  plan      = "1-650"
}