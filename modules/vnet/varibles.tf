variable "resource_group_name" {
  description = "The name of the resource group we want to use"
  default     = ""
}

variable "location" {
  description = "The location/region where we are crrating the resource"
  default     = ""
}

variable "tags" {
  description = "The tags to associate the resource we are creating"
  type        = "map"
  default     = {}
}

# Everything below is for the module

variable "vnet_name" {
  description = "Name of the vnet to create"
  default     = ""
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  default     = ""
}

variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  default     = []
}
