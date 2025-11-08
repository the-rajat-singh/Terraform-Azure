locals {
  rg_name   = "${var.env}-rg"
  vnet_name = "${var.env}-vnet"
  pipn      = "${var.env}-vm"


  common_tags = merge({
    Environment = var.env
    Owner       = "Terraform"
    }, {
    VM_Count = tostring(var.vm_count)
  })
}
