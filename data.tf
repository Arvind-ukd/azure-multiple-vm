data "azurerm_subnet" "vmeastasia" {
  name                 = "eastasia-subnet"
  virtual_network_name = "eastasia-network"
  resource_group_name  = "arvind-rg"
}

output "subnet_id" {
  value = data.azurerm_subnet.vmeastasia.id
}

data "azurerm_subnet" "vmcentralindia" {
  name                 = "india-subnet"
  virtual_network_name = "india-network"
  resource_group_name  = "arvind-rg"
}

output "subnet_id-1" {
  value = data.azurerm_subnet.vmcentralindia.id
}

data "azurerm_subnet" "vmsouthindia" {
  name                 = "eastasia-subnet"
  virtual_network_name = "southindia-network"
  resource_group_name  = "arvind-rg"
}

output "subnet_id-2" {
  value = data.azurerm_subnet.vmsouthindia.id
}


data "azurerm_subnet" "vmukwest" {
  name                 = "ukwest-subnet"
  virtual_network_name = "ukwest-network"
  resource_group_name  = "arvind-rg"
}

output "subnet_id-3" {
  value = data.azurerm_subnet.vmukwest.id
}

