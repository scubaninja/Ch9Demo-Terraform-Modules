resource "azurerm_virtual_network" "vnet" {
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  name                = "${var.vnet_name}"
  address_space       = ["${var.address_space}"]
  dns_servers         = "${var.dns_servers}"
  tags                = "${var.tags}"
}
