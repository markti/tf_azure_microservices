variable "resource_group_name" { }
variable "location" { }
variable "name" { }
variable "app_name" { }
variable "env_name" { }
variable "service_name" { }

variable "host_settings" {
  type = object({

    plan_id = string
    storage_connection_string = string
    instrumentation_key = string
    keyvault_id = string
    code_storage_account_name = string
    code_storage_container = string
    code_package_sas = string

  })
}
variable "azure_function_version" { }
variable "worker_runtime" { }
variable "app_settings" {
    description = "An array of properties to pass into the Azure Function for its app settings collection"
}
variable "deployment_package_filename" { }
variable "loganalytics_workspace_id" { }