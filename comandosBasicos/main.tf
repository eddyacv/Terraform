terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
}

variable "rg_nombre" {
  description = "Nombre del grupo de recursos"
  type        = string
  default     = "miPrimerCommit"
  
}

provider "azurerm" {
  features {}
  subscription_id = "b78ef683-1636-436a-aab6-991a8a1376d2"
}

resource "azurerm_resource_group" "rg" {
  location = "brazilsouth"
  name = var.rg_nombre
}
