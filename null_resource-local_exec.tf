# https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource

resource "null_resource" "null-enable_az_storage_static_website" {
  triggers = {
    account = azurerm_storage_account.azure-storage_account-1.name
  }

  provisioner "local-exec" {
    command = "az storage blob service-properties update --account-name ${azurerm_storage_account.azure-storage_account-1.name} --static-website true --index-document index.html --404-document 404.html"
  }
}