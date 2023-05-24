output "vnet_id" {
  value       = azurerm_virtual_network.vnet-01.id
  description = "ID du Réseau Virtuel"
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet-01.name
  description = "Nom du Réseau Virtuel"
}

output "vnet_rg" {
  value = azurerm_resource_group.rg-01.name
}
