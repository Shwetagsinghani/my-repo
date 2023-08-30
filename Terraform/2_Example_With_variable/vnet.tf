# Azure Provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    #skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  }
}

# Vnet resource creation
resource "azurerm_virtual_network" "HT_Vnet" {
  name                = "ht-terraform-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = [var.Vnet_cidr]

  subnet {
    name           = var.Sub1_name
    address_prefix = var.Sub1_CIDR
  }

  subnet {
    name           = "subnet2"
    address_prefix =  var.Sub2_CIDR
  }

  subnet {
    name           = "subnet3"
    address_prefix = var.Sub3_CIDR
  }
}

resource "azurerm_network_security_group" "HT_SG" {
  name                = "Terraform-security-group"
  location            = var.location
  resource_group_name = var.resource_group_name
}