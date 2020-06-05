variable "resource_group_name" { }
variable "location" { }
variable "app_name" { }
variable "env_name" { }
variable "location_suffix" { }
variable "storage_type" { 
    default = "GRS" 
}
variable "loganalytics_workspace_id" { }