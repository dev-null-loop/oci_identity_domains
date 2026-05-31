resource "oci_identity_domains_identity_provider" "this" {
  assertion_attribute   = var.assertion_attribute
  attribute_sets        = var.attribute_sets
  attributes            = var.attributes
  authn_request_binding = var.authn_request_binding
  authorization         = var.authorization
  dynamic "correlation_policy" {
    for_each = var.correlation_policy[*]
    iterator = cp
    content {
      display = cp.value.display
      type    = cp.value.type
      value   = cp.value.value
    }
  }
  description                       = var.description
  enabled                           = var.enabled
  encryption_certificate            = var.encryption_certificate
  external_id                       = var.external_id
  icon_url                          = var.icon_url
  idcs_endpoint                     = var.idcs_endpoint
  idp_sso_url                       = var.idp_sso_url
  include_signing_cert_in_signature = var.include_signing_cert_in_signature
  dynamic "jit_user_prov_assigned_groups" {
    for_each = var.jit_user_prov_assigned_groups != null ? var.jit_user_prov_assigned_groups : []
    iterator = jupag
    content {
      value = jupag.value.value
    }
  }
  jit_user_prov_attribute_update_enabled = var.jit_user_prov_attribute_update_enabled
  dynamic "jit_user_prov_attributes" {
    for_each = var.jit_user_prov_attributes[*]
    iterator = jupa
    content {
      value = jupa.value.value
    }
  }
  jit_user_prov_create_user_enabled               = var.jit_user_prov_create_user_enabled
  jit_user_prov_enabled                           = var.jit_user_prov_enabled
  jit_user_prov_group_assertion_attribute_enabled = var.jit_user_prov_group_assertion_attribute_enabled
  jit_user_prov_group_assignment_method           = var.jit_user_prov_group_assignment_method
  jit_user_prov_group_mapping_mode                = var.jit_user_prov_group_mapping_mode
  dynamic "jit_user_prov_group_mappings" {
    for_each = var.jit_user_prov_group_mappings != null ? var.jit_user_prov_group_mappings : []
    iterator = jupgm
    content {
      idp_group = jupgm.value.idp_group
      value     = jupgm.value.value
    }
  }
  jit_user_prov_group_saml_attribute_name     = var.jit_user_prov_group_saml_attribute_name
  jit_user_prov_group_static_list_enabled     = var.jit_user_prov_group_static_list_enabled
  jit_user_prov_ignore_error_on_absent_groups = var.jit_user_prov_ignore_error_on_absent_groups
  logout_binding                              = var.logout_binding
  logout_enabled                              = var.logout_enabled
  logout_request_url                          = var.logout_request_url
  logout_response_url                         = var.logout_response_url
  metadata                                    = var.metadata
  name_id_format                              = var.name_id_format
  ocid                                        = var.ocid
  partner_name                                = var.partner_name
  partner_provider_id                         = var.partner_provider_id
  requested_authentication_context            = var.requested_authentication_context
  require_force_authn                         = var.require_force_authn
  requires_encrypted_assertion                = var.requires_encrypted_assertion
  resource_type_schema_version                = var.resource_type_schema_version
  saml_ho_krequired                           = var.saml_ho_krequired
  schemas                                     = var.schemas
  service_instance_identifier                 = var.service_instance_identifier
  shown_on_login_page                         = var.shown_on_login_page
  signature_hash_algorithm                    = var.signature_hash_algorithm
  signing_certificate                         = var.signing_certificate
  succinct_id                                 = var.succinct_id
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  type = var.type
  dynamic "urnietfparamsscimschemasoracleidcsextensionsocial_identity_provider" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionsocial_identity_provider[*]
    iterator = uip
    content {
      access_token_url             = uip.value.access_token_url
      account_linking_enabled      = uip.value.account_linking_enabled
      admin_scope                  = uip.value.admin_scope
      apple_dev_id                 = uip.value.apple_dev_id
      apple_key_id                 = uip.value.apple_key_id
      authz_url                    = uip.value.authz_url
      auto_redirect_enabled        = uip.value.auto_redirect_enabled
      client_credential_in_payload = uip.value.client_credential_in_payload
      clock_skew_in_seconds        = uip.value.clock_skew_in_seconds
      consumer_key                 = uip.value.consumer_key
      consumer_secret              = uip.value.consumer_secret
      discovery_url                = uip.value.discovery_url
      id_attribute                 = uip.value.id_attribute
      dynamic "jit_prov_assigned_groups" {
        for_each = uip.value.jit_prov_assigned_groups != null ? uip.value.jit_prov_assigned_groups : []
        iterator = jpag
        content {
          display = jpag.value.display
          value   = jpag.value.value
        }
      }
      jit_prov_group_static_list_enabled = uip.value.jit_prov_group_static_list_enabled
      profile_url                        = uip.value.profile_url
      redirect_url                       = uip.value.redirect_url
      registration_enabled               = uip.value.registration_enabled
      scope                              = uip.value.scope
      service_provider_name              = uip.value.service_provider_name
      social_jit_provisioning_enabled    = uip.value.social_jit_provisioning_enabled
      status                             = uip.value.status
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionx509identity_provider" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionx509identity_provider[*]
    iterator = up
    content {
      cert_match_attribute               = up.value.cert_match_attribute
      crl_check_on_ocsp_failure_enabled  = up.value.crl_check_on_ocsp_failure_enabled
      crl_enabled                        = up.value.crl_enabled
      crl_location                       = up.value.crl_location
      crl_reload_duration                = up.value.crl_reload_duration
      eku_validation_enabled             = up.value.eku_validation_enabled
      eku_values                         = up.value.eku_values
      ocsp_allow_unknown_response_status = up.value.ocsp_allow_unknown_response_status
      ocsp_enable_signed_response        = up.value.ocsp_enable_signed_response
      ocsp_enabled                       = up.value.ocsp_enabled
      ocsp_responder_url                 = up.value.ocsp_responder_url
      ocsp_revalidate_time               = up.value.ocsp_revalidate_time
      ocsp_server_name                   = up.value.ocsp_server_name
      ocsp_trust_cert_chain              = up.value.ocsp_trust_cert_chain
      other_cert_match_attribute         = up.value.other_cert_match_attribute
      signing_certificate_chain          = up.value.signing_certificate_chain
      user_match_attribute               = up.value.user_match_attribute
    }
  }
  user_mapping_method          = var.user_mapping_method
  user_mapping_store_attribute = var.user_mapping_store_attribute
}
