terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
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

data "azurerm_client_config" "current" {}