variable "name" {
  description = <<-EOF
    Specifies the name of the resource.
    Changing this forces a new resource to be created.
  EOF
  type = string
}

variable "location" {
  description = <<-EOF
    Specifies the supported Azure location where the resource exists.
    Changing this forces a new resource to be created.
  EOF
  type = string
}

variable "resource_group_name" {
  description = <<-EOF
    The name of the resource group in which to create the resource.
    This must be the resource group that the virtual network resides in.
    Changing this forces a new resource to be created.
  EOF
  type = string
}

variable "virtual_network_name" {
  description = <<-EOF
    The name of the virtual network to which to attach the subnet.
    Changing this forces a new resource to be created.
  EOF
  type = string
}

variable "route_table_name" {
  description = <<-EOF
    The name of the route table to associate with the subnet.
  EOF
  type    = string
  default = null
}

variable "address_prefixes" {
  description = "The address prefixes to use for the subnet."
  type        = list(string)
}

variable "service_endpoints" {
  description = "The list of Service endpoints to associate with the subnet."
  type        = list(string)
  default     = []
}

variable "default_outbound_access_enabled" {
  description = <<-EOF
    Enable default outbound access to the internet for the subnet.
  EOF
  type    = bool
  default = true
}

variable "private_endpoint_network_policies" {
  description = <<-EOF
    Enable or Disable network policies for the private endpoint on the subnet.
    Possible values are `Disabled`, `Enabled`, `NetworkSecurityGroupEnabled`
    and `RouteTableEnabled`.
  EOF
  type    = string
  default = "Enabled"
}

variable "private_link_service_network_policies_enabled" {
  description = <<-EOF
    Enable or Disable network policies for the private link service on the subnet.
  EOF
  type    = bool
  default = true
}

variable "delegations" {
  type    = map
  default = {}
}
