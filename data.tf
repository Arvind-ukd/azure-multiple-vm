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

data "azurerm_subnet" "vmeastus" {
  name                 = "eastus-subnet"
  virtual_network_name = "eastus-network"
  resource_group_name  = "arvind-rg"
}

output "subnet_id-2" {
  value = data.azurerm_subnet.vmeastus.id
}


data "azurerm_subnet" "vmwestus" {
  name                 = "westus-subnet"
  virtual_network_name = "westus-network"
  resource_group_name  = "arvind-rg"
}

output "subnet_id-3" {
  value = data.azurerm_subnet.vmwestus.id
}

