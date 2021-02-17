# Configure remote backend
terraform {
#  required_providers {
#    azurerm = {
#      source = "hashicorp/azurerm"
#      version = ">= 2.26"
#    }
#  }
  backend "azurerm" {
    resource_group_name  = "MainRG"
    storage_account_name = "mittfstate"
    container_name       = "tfstate"
    key                  = "demo.azure.tfstate"
  }  
}

