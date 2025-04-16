# ------------------------------
# Terraform Azure App Service Setup
# ------------------------------

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}

# ------------------------------
# Random suffix for uniqueness (optional)
# ------------------------------
resource "random_id" "suffix" {
  byte_length = 4
}

# ------------------------------
# Resource Group
# ------------------------------
resource "azurerm_resource_group" "rg" {
  name     = "rg-dotnetapp"
  location = "East US"
}

# ------------------------------
# App Service Plan
# ------------------------------
resource "azurerm_app_service_plan" "asp" {
  name                = "dotnetapp-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }

  os_type = "Windows"
}

# ------------------------------
# Azure App Service
# ------------------------------
resource "azurerm_app_service" "app" {
  name                = "dotnetapp-${random_id.suffix.hex}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    dotnet_framework_version = "v6.0"
    scm_type                 = "None"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "DevOpsDemo"
  }
}
