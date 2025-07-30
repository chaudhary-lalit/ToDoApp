terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "todo-app-rg"
    storage_account_name = "stgtodoapp"
    container_name       = "containertodoapp"
    key                  = "lalit.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f7d28834-9c52-41d7-adc6-8ae678eef59f"
                     
}

resource "azurerm_resource_group" "todo_app" {
  name     = "todo-app-rg"
  location = "East US"
}
