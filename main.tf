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

# vm eastus
resource "azurerm_network_interface" "eastus" {
  name                = "eastus-nic"
  location            =  "East US"
  resource_group_name =  "arvind-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.vmeastus.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "arvindeastus" {
  name                = "eastusvm"
  resource_group_name = azurerm_network_interface.eastus.resource_group_name
  location            = azurerm_network_interface.eastus.location
  size                = "Standard_D2s_v3"
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

 west us

resource "azurerm_network_interface" "ukwestus" {
  name                = "westus-nic"
  location            =  "West US"
  resource_group_name =  "arvind-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.vmuwestus.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "westusvm" {
  name                = "westusvm"
  resource_group_name = azurerm_network_interface.ukwestus.resource_group_name
  location            = azurerm_network_interface.ukwestus.location
  size                = "Standard_D2s_v3"
  admin_username      = "zadmin"
  admin_password      = "Pass@123Pass@123"
  network_interface_ids = [
    azurerm_network_interface.ukwestus.id,
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
