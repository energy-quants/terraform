# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/route_table
data "azurerm_route_table" "rt" {
  count = var.route_table_name == null ? 0 : 1
  name                = var.route_table_name
  resource_group_name = var.resource_group_name
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_route_table_association
resource "azurerm_subnet_route_table_association" "snet_rt_assoc" {
  count          = var.route_table_name == null ? 0 : 1
  depends_on     = [azurerm_subnet.snet]
  subnet_id      = azurerm_subnet.snet.id
  route_table_id = data.azurerm_route_table.rt[0].id
}
