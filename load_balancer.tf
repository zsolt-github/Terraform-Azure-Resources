# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb

resource "azurerm_lb" "azure-load_ballancer" {
  name                = var.az_load_balancer_name
  location            = var.az_location
  resource_group_name = var.az_resource_group_name
  depends_on          = [azurerm_resource_group.azure-rg, azurerm_public_ip.azure-public_ip-1]

  frontend_ip_configuration {
    name                 = "Load_Balancer-Frontend_IP"
    public_ip_address_id = azurerm_public_ip.azure-public_ip-1.id
  }
}

resource "azurerm_lb_backend_address_pool" "azure-load_ballancer-backend_pool" {
  name                = "Load_Balancer-Backend_Pool"
  loadbalancer_id     = azurerm_lb.azure-load_ballancer.id
}

resource "azurerm_lb_nat_pool" "azure-load_ballancer-nat_pool" {
  name                           = "Load_Balancer-NAT_Pool"
  resource_group_name            = var.az_resource_group_name
  loadbalancer_id                = azurerm_lb.azure-load_ballancer.id
  frontend_ip_configuration_name = "Load_Balancer-Frontend_IP"
  protocol                       = "Tcp"
  frontend_port_start            = 80
  frontend_port_end              = 90
  backend_port                   = 8080
}

resource "azurerm_lb_probe" "azure-load_ballancer-probe" {
  name                = "Load_Ballancer-Probe"
  loadbalancer_id     = azurerm_lb.azure-load_ballancer.id
  port                = 22
  protocol            = "Tcp"
}

resource "azurerm_lb_rule" "azure-load_ballancer-rule-1" {
  name                           = "Load_Ballancer_Rule-SSH"
  loadbalancer_id                = azurerm_lb.azure-load_ballancer.id
  probe_id                       = azurerm_lb_probe.azure-load_ballancer-probe.id
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.azure-load_ballancer-backend_pool.id]
  frontend_ip_configuration_name = "Load_Balancer-Frontend_IP"
  protocol                       = "Tcp"
  frontend_port                  = 22
  backend_port                   = 22
}

resource "azurerm_lb_rule" "azure-load_ballancer-rule-2" {
  name                           = "Load_Ballancer_Rule-RDP"
  loadbalancer_id                = azurerm_lb.azure-load_ballancer.id
  probe_id                       = azurerm_lb_probe.azure-load_ballancer-probe.id
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.azure-load_ballancer-backend_pool.id]
  frontend_ip_configuration_name = "Load_Balancer-Frontend_IP"
  protocol                       = "Tcp"
  frontend_port                  = 3389
  backend_port                   = 3389
}