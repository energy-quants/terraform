terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

locals {
  location_code = {
    australiaeast      = "ae",
    australiasoutheast = "as",
  }
  name_prefix = "eq-${local.location_code[var.location]}"
}
