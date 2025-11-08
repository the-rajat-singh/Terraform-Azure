location = "centralindia"
env      = "project"
vm_size  = "Standard_B1ms"
vm_count = 2
subnets = {
  subnet1 = "10.0.1.0/24"
  subnet2 = "10.0.2.0/24"
  subnet3 = "10.0.3.0/24"
}

username = "rajat"
password = "@sRf5D8k2ViLhnx"

os_image = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "latest"
}
