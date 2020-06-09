

module "service_principal" {
  
  source                        = "github.com/markti/tf_azure_aad/scenario/backend"
  name                          = var.name
  application_id_uri            = "api://${var.name}"

}


module "keyvault_access" {
  
  source                = "github.com/markti/tf_azure_keyvault/policy/machine/reader"

  keyvault_id           = var.keyvault_id
  application_id        = module.service_principal.client_id

}
