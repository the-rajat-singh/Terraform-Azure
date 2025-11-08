output "resource_group_name" {
  value = module.resource_group.rg_name
}

output "subnet_names" {
  value = module.network.subnet_names
}

output "public_ip_vm" {
  value = module.network.public_ip_vm
}

