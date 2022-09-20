# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface

resource "azurerm_network_interface" "azure-net_int-1" {
  name                = var.az_net_int-1
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  # dns_servers         = ["10.0.0.4", "10.0.0.5"]
  depends_on          = [azurerm_subnet.azure-subnet-1]

  ip_configuration {
    name                          = "Internal_IP-1"
    subnet_id                     = azurerm_subnet.azure-subnet-1.id
    private_ip_address_allocation = "Dynamic"
    # private_ip_address_allocation = "Static"
    # private_ip_address            = "10.10.1.122"

    public_ip_address_id          = azurerm_public_ip.azur-public_ip-1.id
  }

  tags = {
    "ResourceType" = "Network Interface"
    "Environment"  = "Practice"
  }
}