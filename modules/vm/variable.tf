variable "vm_count" {

  
}

variable "env" {
  
}

variable "location" {
  
}
 variable "vm_size" {
   
 }

 variable "username" {
   
 }

 variable "password" {
   
 }

 variable "rg_name" {
   
 }



 variable "tags" {
   
 }

 variable "os_image" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  
}

variable "subnet_id" {
  
}
variable "pipid" {
  
}
variable "nsg_id" {
  
}