variable "location" {
  type = string
}

variable "env" {
  type = string
}

variable "subnets" {
  type = map(string)
}

variable "vm_size" {
  type = string
}

variable "os_image" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

variable "vm_count" {
  type = number
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}
