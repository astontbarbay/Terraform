terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}
provider "azurerm" {
  features {}
  tenant_id       = "750b440a-bf22-45fc-b6d2-9ba065bff8bf"
  subscription_id = "b49c0e24-8868-429d-8cf3-f7d0ee31e0f7"
}
