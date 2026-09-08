terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=5.0.0"
        }
        
    }
     backend "azurerm" {
    resource_group_name  = "rg-paglabackend"
    storage_account_name = "paglabackend"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
    features {}
    subscription_id = "bc304d74-dfec-4f01-af8f-f598f6619edb"
}