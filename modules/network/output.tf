
output "subnet_id" {
  value = azurerm_subnet.subnets["subnet1"].id
}


output "public_ip_vm" {
  value = azurerm_public_ip.vm_pip.ip_address
}

output "subnet_names" {
  value = [for s in azurerm_subnet.subnets : s.name]
}

output "pipid" {
    value = azurerm_public_ip.vm_pip.id
  
}

output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
}
