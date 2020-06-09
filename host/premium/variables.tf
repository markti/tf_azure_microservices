variable "environment" {
  type = object({

    app_name = string
    env_name = string
    resource_group_name = string
    location = string
    location_suffix = string

  })
}
variable "name" { }
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