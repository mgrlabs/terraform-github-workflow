# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg-${var.environment}-hybris-edp-sync"
  location = "Australia East"
}

variable environment {
  type        = string
  description = "description"
}

# variable subscription_id {
#   type        = string
#   description = "description"
# }

# variable client_id {
#   type        = string
#   description = "description"
# }

# variable client_secret {
#   type        = string
#   description = "description"
# }

# variable tenant_id {
#   type        = string
#   description = "description"
# }
