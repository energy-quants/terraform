output "name" {
  value = azurerm_subnet.snet.name
}

output "id" {
  value = azurerm_subnet.snet.id
}

output "virtual_network_name" {
  value = azurerm_subnet.snet.virtual_network_name
}

output "resource_group_name" {
  value = azurerm_subnet.snet.resource_group_name
}

output "address_space" {
  value = azurerm_subnet.snet.address_prefixes[0]
}