/*

# https://github.com/hashicorp/terraform-provider-azurerm/blob/main/examples/virtual-machines/windows/vm-custom-extension/main.tf
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_extension

resource "azurerm_virtual_machine_extension" "azure-virtual_machine_extension-1" {
  name                 = "ansible_windows_winrm"
  virtual_machine_id   = azurerm_windows_virtual_machine.azure-windows_virtual_machine-1.id
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.9"

  settings = <<SETTINGS
    {
        "fileUris": ["https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"],
        "commandToExecute": "powershell -ExecutionPolicy Unrestricted -file ConfigureRemotingForAnsible.ps1 -EnableCredSSP -DisableBasicAuth"
    }
SETTINGS
}

*/