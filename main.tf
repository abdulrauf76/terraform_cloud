# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
    backend "remote" {
    organization = "mibfirstorg"
    hostname = "app.terraform.io"

    workspaces {
      name = "terraform_cloud"
    }
  }  
}

provider "azurerm" {
  features {}
  //version = ">= 2.26"
 
  /*subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
*/

}

resource "azurerm_resource_group" "rg" {
  name     = "testtf-rg"
  location = "uksouth"
}

resource "azurerm_virtual_network" "vnet" {
    name = "tf-vnet"
    address_space = ["10.1.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
    location = "uksouth"


    subnet {
        name = "subnet1"
        address_prefix = "10.1.5.0/24"
    }

}