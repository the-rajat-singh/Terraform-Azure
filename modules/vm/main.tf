resource "azurerm_linux_virtual_machine" "vm" {
  count                           = var.vm_count
  name                            = "${var.env}-vm-${count.index}"
  location                        = var.location
  resource_group_name             = var.rg_name
  size                            = var.vm_size
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.vm_nic[count.index].id]



  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }


  source_image_reference {
    publisher = var.os_image.publisher
    offer     = var.os_image.offer
    sku       = var.os_image.sku
    version   = var.os_image.version
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]

    connection {
      type     = "ssh"
      user     = "rajat"
      password = "@sRf5D8k2ViLhnx"
      host     = try(self.public_ip_address, null)
    }


    on_failure = continue
  }
  tags = var.tags
}




resource "azurerm_network_interface" "vm_nic" {
  count               = var.vm_count
  name                = "${var.env}-${count.index}nic"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "${count.index}-ip"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = count.index == 0 ? var.pipid : null
  }
}

resource "azurerm_network_interface_security_group_association" "nic_assoc" {
  network_interface_id      = azurerm_network_interface.vm_nic[0].id
  network_security_group_id = var.nsg_id
}