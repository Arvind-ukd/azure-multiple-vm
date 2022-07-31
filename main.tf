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
  name                = "eastasiavm"
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

#  India vm

resource "azurerm_network_interface" "Arvind" {
  name                = "centralindia-nic"
  location            =  "Central India"
  resource_group_name =  "arvind-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.vmcentralindia.id
    private_ip_address_allocation = "Static"
  }
}

resource "azurerm_windows_virtual_machine" "ArvindVM" {
  name                = "centralindiavm"
  resource_group_name = azurerm_network_interface.arvind.name
  location            = azurerm_network_interface.arvind.location
  size                = "Standard_F2"
  admin_username      = "zadmin"
  admin_password      = "Pass@123Pass@123"
  network_interface_ids = [
    azurerm_network_interface.arvind.id,
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

# south india vm
resource "azurerm_network_interface" "south" {
  name                = "southindia-nic"
  location            =  "South India"
  resource_group_name =  "arvind-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.vmsouthindia.id
    private_ip_address_allocation = "Static"
  }
}

resource "azurerm_windows_virtual_machine" "arvindsouth" {
  name                = "southindiavm"
  resource_group_name = azurerm_network_interface.south.name
  location            = azurerm_network_interface.south.location
  size                = "Standard_F2"
  admin_username      = "zadmin"
  admin_password      = "Pass@123Pass@123"
  network_interface_ids = [
    azurerm_network_interface.south.id,
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

# uk west

resource "azurerm_network_interface" "ukwestnic" {
  name                = "ukwest-nic"
  location            =  "UK West"
  resource_group_name =  "arvind-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.vmukwest.id
    private_ip_address_allocation = "Static"
  }
}

resource "azurerm_windows_virtual_machine" "ukwestexample" {
  name                = "ukwestvm"
  resource_group_name = azurerm_network_interface.ukwestnic.name
  location            = azurerm_network_interface.ukwestnic.location
  size                = "Standard_F2"
  admin_username      = "zadmin"
  admin_password      = "Pass@123Pass@123"
  network_interface_ids = [
    azurerm_network_interface.ukwestnic.id,
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
