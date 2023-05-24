resource "azurerm_resource_group" "rg-01" {
  name     = "${var.prefix_name}-${var.env}-rg"
  location = var.location
  tags     = var.tag
}

resource "azurerm_virtual_network" "vnet-01" {
  name                = "${var.prefix_name}-${var.env}-vnet"
  address_space       = [var.CIDR_BLOCK]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg-01.name
  tags                = var.tag
}

resource "azurerm_subnet" "subnet-pub-01" {
  count                = 3
  name                 = "${var.prefix_name}-${var.env}-subnet-pub-${count.index}"
  virtual_network_name = azurerm_virtual_network.vnet-01.name
  resource_group_name  = azurerm_resource_group.rg-01.name
  address_prefixes     = [cidrsubnet(var.CIDR_BLOCK, 3, count.index + 1)]

}

resource "azurerm_subnet" "subnet-priv-01" {
  count                = 3
  name                 = "${var.prefix_name}-${var.env}-subnet-priv-${count.index}"
  virtual_network_name = azurerm_virtual_network.vnet-01.name
  resource_group_name  = azurerm_resource_group.rg-01.name
  address_prefixes     = [cidrsubnet(var.CIDR_BLOCK, 3, count.index + 1 + length(azurerm_subnet.subnet-pub-01) + 1)]

}

resource "azurerm_virtual_network_peering" "Peering_1to2" {
  count                     = var.peering_vnet_id != "" ? 1 : 0
  name                      = "${var.prefix_name}-${var.env}-peering-1"
  resource_group_name       = azurerm_resource_group.rg-01.name
  virtual_network_name      = azurerm_virtual_network.vnet-01.name
  remote_virtual_network_id = var.peering_vnet_id
}

resource "azurerm_virtual_network_peering" "Peering_2to1" {
  count                     = var.peering_vnet_id != "" ? 1 : 0
  name                      = "${var.prefix_name}-${var.env}-peering-2"
  resource_group_name       = var.peering_vnet_rg
  virtual_network_name      = var.peering_vnet_name
  remote_virtual_network_id = azurerm_virtual_network.vnet-01.id

}
