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
  description = "Name of the vnet to create the subnets in"
  default     = ""
}

variable "subnets" {
  type        = "list"
  description = "The address prefix to use for the subnet."
  default     = []
}

variable "add_endpoint" {
  description = "should we be adding an endpint, leave this as is"
  default     = false
}
