resource "azurerm_network_interface" "example" {
  name                = "eastasia-nic"
  location            =  "East asia"
  resource_group_name =  "arvind-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.vmeastasia.id
    private_ip_address_allocation = "Static"
  }
}

resource "azurerm_windows_virtual_machine" "example" {
  name                = "eastasia-vm"
  resource_group_name = azurerm_network_interface.example.name
  location            = azurerm_network_interface.example.location
  size                = "Standard_F2"
  admin_username      = "zadmin"
  admin_password      = "Pass@123Pass@123"
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

#