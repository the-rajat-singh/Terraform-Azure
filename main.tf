module "resource_group" {
  source   = "./modules/resource_gp"
  rg_name  = local.rg_name
  location = var.location
  tags     = local.common_tags

}
module "network" {
  source    = "./modules/Network"
  rg_name   = module.resource_group.rg_name
  location  = module.resource_group.location
  tags      = local.common_tags
  vnet_name = local.vnet_name
  pipn      = local.pipn
  subnets   = var.subnets
  vm_count  = var.vm_count
  env       = var.env
}



module "vm" {
  source   = "./modules/vm"
  rg_name  = module.resource_group.rg_name
  location = module.resource_group.location
  env      = var.env
  username = var.username
  vm_count = var.vm_count
  vm_size  = var.vm_size
  password = var.password  
  tags     = local.common_tags
  os_image = var.os_image
  subnet_id = module.network.subnet_id
  pipid = module.network.pipid
  nsg_id = module.network.nsg_id

}



