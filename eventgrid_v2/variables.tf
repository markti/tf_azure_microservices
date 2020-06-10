variable "resource_group_name" { }
variable "location" { }
variable "name" { }
variable "app_name" { }
variable "env_name" { }
variable "service_name" { }
variable "hosting_plan_id" { }
variable "hosting_storage_connection_string" { }
variable "azure_function_version" { }
variable "worker_runtime" { }
variable "app_settings" {
    description = "An array of properties to pass into the Azure Function for its app settings collection"
}

variable "host_settings" {
    type = object({

    plan_id = string
    storage_connection_string = string
    instrumentation_key = string
    keyvault_id = string
    deployment_storage_account_name = string
    deployment_storage_container = string
    deployment_package_sas = string

  })
}

variable "deployment_package_filename" { }
variable "loganalytics_workspace_id" { }