output "hosting_plan_id" {
  value = module.api_hosting_plan.id
}
output "storage_connection_string" {
  value = module.api_hosting_plan.storage_connection_string
}
output "instrumentation_key" {
  value = module.appinsights.instrumentation_key
}
output "keyvault_id" {
  value = module.keyvault.id
}
output "keyvault_uri" {
  value = module.keyvault.uri
}
output "code_storage_account_name" {
  value = module.code_storage.name
}
output "code_storage_container" {
  value = azurerm_storage_container.code_storage.name
}
output "code_storage_sas" {
  value = data.azurerm_storage_account_sas.code_storage.sas
}

output "host_settings" {
  value = object({
    hosting_plan_id           = module.api_hosting_plan.id
    storage_connection_string = module.api_hosting_plan.storage_connection_string
    instrumentation_key       = module.appinsights.instrumentation_key
    keyvault_id               = module.keyvault.id
    keyvault_uri              = module.keyvault.uri
    code_storage_account_name = module.code_storage.name
    code_storage_container    = azurerm_storage_container.code_storage.name
    code_storage_sas          = data.azurerm_storage_account_sas.code_storage.sas

  })
}