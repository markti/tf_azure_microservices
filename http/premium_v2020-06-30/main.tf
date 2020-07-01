


locals {

  required_settings = {
      "APPINSIGHTS_INSTRUMENTATIONKEY"    = var.host_settings.instrumentation_key,
      "WEBSITE_RUN_FROM_PACKAGE"          = local.code_drop_url,
      "ClientID"                          = var.fn_settings.client_id,
      "ClientSecret"                      = var.fn_settings.client_secret
  }
  combined_settings = merge(local.required_settings, var.fn_settings.app_settings)
}


module "api_fn" {
  
  source                        = "github.com/markti/tf_azure_fn/http/premium"
  
  app_name                      = var.environment.app_name
  env_name                      = var.environment.env_name

  name                          = var.fn_settings.name
  resource_group_name           = var.environment.resource_group_name
  location                      = var.environment.location
  app_service_plan_id           = var.host_settings.plan_id
  storage_connection_string     = var.host_settings.storage_connection_string
  azure_function_version        = var.fn_settings.runtime_version
  worker_runtime                = var.fn_settings.runtime_type
  app_settings                  = local.combined_settings

}
