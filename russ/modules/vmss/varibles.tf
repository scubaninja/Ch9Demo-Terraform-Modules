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

variable "subnet_id" {
  description = ""
  default     = ""
}

variable "saname" {
  description = ""
  default     = ""
}

variable "capacity" {
  description = ""
  default     = ""
}

