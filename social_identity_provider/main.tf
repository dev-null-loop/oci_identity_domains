resource "oci_identity_domains_social_identity_provider" "this" {
  access_token_url             = var.access_token_url
  account_linking_enabled      = var.account_linking_enabled
  admin_scope                  = var.admin_scope
  apple_dev_id                 = var.apple_dev_id
  apple_key_id                 = var.apple_key_id
  authorization                = var.authorization
  authz_url                    = var.authz_url
  auto_redirect_enabled        = var.auto_redirect_enabled
  client_credential_in_payload = var.client_credential_in_payload
  clock_skew_in_seconds        = var.clock_skew_in_seconds
  consumer_key                 = var.consumer_key
  consumer_secret              = var.consumer_secret
  description                  = var.description
  discovery_url                = var.discovery_url
  enabled                      = var.enabled
  icon_url                     = var.icon_url
  id_attribute                 = var.id_attribute
  idcs_endpoint                = var.idcs_endpoint
  dynamic "jit_prov_assigned_groups" {
    for_each = var.jit_prov_assigned_groups != null ? var.jit_prov_assigned_groups : []
    iterator = jpag
    content {
      value = jpag.value.value
    }
  }
  jit_prov_group_static_list_enabled = var.jit_prov_group_static_list_enabled
  name                               = var.name
  ocid                               = var.ocid
  profile_url                        = var.profile_url
  redirect_url                       = var.redirect_url
  refresh_token_url                  = var.refresh_token_url
  registration_enabled               = var.registration_enabled
  dynamic "relay_idp_param_mappings" {
    for_each = var.relay_idp_param_mappings != null ? var.relay_idp_param_mappings : []
    iterator = ripm
    content {
      relay_param_key   = ripm.value.relay_param_key
      relay_param_value = ripm.value.relay_param_value
    }
  }
  resource_type_schema_version    = var.resource_type_schema_version
  schemas                         = var.schemas
  scope                           = var.scope
  service_provider_name           = var.service_provider_name
  show_on_login                   = var.show_on_login
  social_jit_provisioning_enabled = var.social_jit_provisioning_enabled
  status                          = var.status
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
}
