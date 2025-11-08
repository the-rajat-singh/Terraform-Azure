terraform {
  backend "azurerm" {
    resource_group_name  = "remote-rg"
    storage_account_name = "remotestorageyofaqew5"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    subscription_id      = ""
    tenant_id            = ""
    client_id            = ""
    client_secret        = ""
  }
}