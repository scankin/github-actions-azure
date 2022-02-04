terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.31.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "actions-rg-uks"
    storage_account_name = "actionsstrg"
    container_name       = "actionstfstate"
    key                  = "backend-state"
  }
}

provider "azurerm" {
  features {}
}
