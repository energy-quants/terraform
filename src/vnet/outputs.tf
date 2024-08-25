output "id" {
  value = azurerm_virtual_network.vnet.id
}

output "name" {
   value = azurerm_virtual_network.vnet.name
}

output "location" {
   value = azurerm_virtual_network.vnet.location
}

output "resource_group_name" {
   value = azurerm_virtual_network.vnet.resource_group_name
}

output "address_space" {
   value = azurerm_virtual_network.vnet.address_space
}

output "guid" {
   value = azurerm_virtual_network.vnet.guid
}

output "dns_servers" {
   value = azurerm_virtual_network.vnet.dns_servers
}
