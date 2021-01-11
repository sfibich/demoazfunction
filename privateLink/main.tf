# Configure the Azure provider
terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-mgmt-rg"
    storage_account_name = "a4xhqldweterraform"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate.sfibich.simpleTest"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.40.0"
    }
  }
}


resource "azurerm_resource_group" "rg" {
  name     = "privateLink"
  location = "eastus2"
}




