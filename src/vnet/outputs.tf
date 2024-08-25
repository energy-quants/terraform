variable "id" {
  value = azurerm_virtual_network.vnet.id
}

variable "name" {
   value = azurerm_virtual_network.vnet.name
}

variable "location" {
   value = azurerm_virtual_network.vnet.location
}

variable "resource_group_name" {
   value = azurerm_virtual_network.vnet.resource_group_name
}

variable "address_space" {
   value = azurerm_virtual_network.vnet.address_space
}

variable "guid" {
   value = azurerm_virtual_network.vnet.guid
}

variable "dns_servers" {
   value = azurerm_virtual_network.vnet.dns_servers
}
