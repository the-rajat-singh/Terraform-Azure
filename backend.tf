terraform {
  backend "azurerm" {
    resource_group_name  = "storage_for_rajat"
    storage_account_name = "storagetfstateviarajat"
    container_name       = "terra"
    key                  = "terraform.tfstate"
    subscription_id = "bbef96f5-5052-4cf1-af04-4c7e4ac2dd0f"
    tenant_id       = "d01ce0a6-4174-4b16-9a4f-3ce908c6b0f8"
    client_id       = "6ef52c60-08fb-4093-b6a9-06d339706cd4"
    client_secret   = "nMS8Q~69l.BPRo.LJt854g_DQ~ub7z4OtChUBaoQ"
 
  }
}
