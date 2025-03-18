terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.22.0, < 5.0.0"
    }
  }
  required_version = ">= 1.8.5"
}
