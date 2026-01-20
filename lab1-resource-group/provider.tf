provider "azurerm" {
  features {}

  resource_provider_registrations = "none"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "> 3.0"
    }
  }

  required_version = ">= 1.0"
}
