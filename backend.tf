terraform {
  backend "azurerm" {
    resource_group_name  = "storage_for_rajat"
    storage_account_name = "storagetfstateviarajat"
    container_name       = "terra"
    key                  = "terraform.tfstate"
 
  }
}
