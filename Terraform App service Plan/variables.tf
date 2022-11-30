variable "resource_group_name" {
  type        = string
  description = "name of resource group"
  default = "TFproject4"
}

variable "location" {
  type        = string
default = "eastus"
  description = "location of resource group"
}

variable "app_service_plan_name" {
 type = string
 default = "ASP-devgroupRG-9415" 
}
