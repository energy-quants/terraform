# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id
resource "random_id" "id" {
  byte_length = 3
  keepers = {
    name                 = "${var.name}"
    location             = "${var.location}"
    resource_group_name  = "${var.resource_group_name}"
    virtual_network_name = "${var.virtual_network_name}"
  }
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet
resource "azurerm_subnet" "snet" {
  name                 = "${local.name_prefix}-snet-${var.name}-${random_id.id.hex}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.address_prefixes
  service_endpoints    = var.service_endpoints

  default_outbound_access_enabled                = var.default_outbound_access_enabled
  private_endpoint_network_policies              = var.private_endpoint_network_policies
  private_link_service_network_policies_enabled  = var. private_link_service_network_policies_enabled

  dynamic delegation {
    for_each = var.delegations
    content {
      name = delegation.key
      service_delegation {
        name = delegation.value.name
        actions = delegation.value.actions
      }
    }
  }

  lifecycle {
    # Can't have 2 subnets with the same cidr
    create_before_destroy = false
  }
}
