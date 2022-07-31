resource "azurerm_network_interface" "example" {
  name                = "eastasia-nic"
  location            =  "East asia"
  resource_group_name =  "arvind-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.vmeastasia.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "example" {
  name                = "eastasiavm"
  resource_group_name = azurerm_network_interface.example.resource_group_name
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

resource "azurerm_network_interface" "Arvind" {
  name                = "centralindia-nic"
  location            =  "Central India"
  resource_group_name =  "arvind-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.vmcentralindia.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "ArvindVM" {
  name                = "centralindiavm"
  resource_group_name = azurerm_network_interface.Arvind.resource_group_name
  location            = azurerm_network_interface.Arvind.location
  size                = "Standard_F2"
  admin_username      = "zadmin"
  admin_password      = "Pass@123Pass@123"
  network_interface_ids = [
    azurerm_network_interface.Arvind.id,
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
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "arvindsouth" {
  name                = "southindiavm"
  resource_group_name = azurerm_network_interface.south.resource_group_name
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
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "ukwestexample" {
  name                = "ukwestvm"
  resource_group_name = azurerm_network_interface.ukwestnic.resource_group_name
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
