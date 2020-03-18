terraform {
  required_version = ">= 0.12.0"
}

resource "azurerm_resource_group" "resource_group" {
  name     = "${var.application}-${var.environment}"
  location = "${var.location}"
  tags     = "${merge(var.default_tags, map("type", "resource"))}"
}

module "application-vnet" {
  source              = "./modules/vnet"
  resource_group_name = "${azurerm_resource_group.resource_group.name}"
  location            = "${var.location}"
  tags                = "${merge(var.default_tags, map("type", "network"))}"
  vnet_name           = "${azurerm_resource_group.resource_group.name}-vnet"
  address_space       = "${var.address_space}"
}

module "application-subnets" {
  source              = "./modules/subnet"
  resource_group_name = "${azurerm_resource_group.resource_group.name}"
  location            = "${var.location}"
  tags                = "${merge(var.default_tags, map("type", "network"))}"
  vnet_name           = "${module.application-vnet.vnet_name}"

  subnets = [
    {
      name   = "${azurerm_resource_group.resource_group.name}-subnet"
      prefix = "${var.subnet}"
    }
  ]
}
module "vmss" {
  source              = "./modules/vmss"
  resource_group_name = "${azurerm_resource_group.resource_group.name}"
  location            = "${var.location}"
  tags                = "${merge(var.default_tags, map("type", "vmss"))}"
  saname              = "${var.application}${var.environment}"
  capacity            = "${var.capacity}"
  subnet_id           = "${module.application-subnets.vnet_subnets}"
}