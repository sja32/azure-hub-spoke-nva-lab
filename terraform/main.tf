terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f973a15e-5434-434c-993b-5dd9e4958952"
  resource_provider_registrations = "none"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-az700-vnet-lab"
  location = "East US"
}