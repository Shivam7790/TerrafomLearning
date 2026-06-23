terraform {
  backend "azurerm" {
    resource_group_name  = "rg-dev"
    storage_account_name = "shivamtfstate7790"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}