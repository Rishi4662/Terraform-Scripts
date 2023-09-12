#Common-Tags

locals {
  common_tags = {
    Email   = var.Email
    Owner   = var.Owner
    Purpose = var.Purpose
    Client  = var.Client
  }
}

# To Create Resource Group

resource "azurerm_resource_group" "rg" {
  name     = "${var.name}-Training-RG"
  location = var.resource-location
  tags     = local.common_tags
}

output "resource-group-name" {
  value = azurerm_resource_group.rg.name
}