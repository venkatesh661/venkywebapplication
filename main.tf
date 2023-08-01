/* resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "${random_pet.prefix.id}-rg"
}

# Create virtual network
resource "azurerm_virtual_network" "my_terraform_network" {
  name                = "${random_pet.prefix.id}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
} */
/* 
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  features {}
} */
terraform{
    required_version = ">=1.0"

    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>3.0"
        }

        random = {
            source = "hashicorp/azurerm"
            version = "~>3.0"

        }
    }
}

provider "azurerm"{
    features{}
    Subscription-ID = "441cdc6e-a12d-43fe-bb03-82141f456e04"
    client-Id = "b44c21e1-2768-4556-92e5-d537bade52c7"
    Secret-ID = "e0523ec2-fe01-4c03-8316-7daed10c123b"
}







resource "azurerm_resource_group" "Demorg" {
  name = "Demorg"
  location = "eastus"
}



resource "azurerm_virtual_network" "VirtualNetwork1" {
  name                = "VirtualNetwork1"
  address_space       = ["10.1.0.0/24"]
  location            = azurerm_resource_group.Demorg.location
  resource_group_name = azurerm_resource_group.Demorg.name
}

resource "azurerm_subnet" "Subnet1" {
  name                 = "Subnet1"
  resource_group_name  = azurerm_resource_group.Demorg.name
  virtual_network_name = azurerm_virtual_network.VirtualNetwork1.name
  address_prefixes     = ["10.1.0.0/26"]
}