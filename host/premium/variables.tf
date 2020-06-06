variable "resource_group_name" { }
variable "location" { }
variable "app_name" { }
variable "env_name" { }
variable "location_suffix" { }
variable "storage_type" { 
    default = "GRS" 
}
variable "loganalytics_workspace_id" { }
variable "maximum_instance_count" {
  default = 1
}
variable "minimum_instance_count" {
  default = 1
}