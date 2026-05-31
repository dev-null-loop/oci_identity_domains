resource "oci_identity_domains_setting" "this" {
  account_always_trust_scope               = var.account_always_trust_scope
  allowed_domains                          = var.allowed_domains
  allowed_forgot_password_flow_return_urls = var.allowed_forgot_password_flow_return_urls
  allowed_notification_redirect_urls       = var.allowed_notification_redirect_urls
  attribute_sets                           = var.attribute_sets
  attributes                               = var.attributes
  audit_event_retention_period             = var.audit_event_retention_period
  authorization                            = var.authorization
  dynamic "certificate_validation" {
    for_each = var.certificate_validation[*]
    iterator = cv
    content {
      crl_check_on_ocsp_failure_enabled     = cv.value.crl_check_on_ocsp_failure_enabled
      crl_enabled                           = cv.value.crl_enabled
      crl_location                          = cv.value.crl_location
      crl_refresh_interval                  = cv.value.crl_refresh_interval
      ocsp_enabled                          = cv.value.ocsp_enabled
      ocsp_responder_url                    = cv.value.ocsp_responder_url
      ocsp_settings_responder_url_preferred = cv.value.ocsp_settings_responder_url_preferred
      ocsp_signing_certificate_alias        = cv.value.ocsp_signing_certificate_alias
      ocsp_timeout_duration                 = cv.value.ocsp_timeout_duration
      ocsp_unknown_response_status_allowed  = cv.value.ocsp_unknown_response_status_allowed
    }
  }
  dynamic "cloud_gate_cors_settings" {
    for_each = var.cloud_gate_cors_settings[*]
    iterator = cgcs
    content {
      cloud_gate_cors_allow_null_origin = cgcs.value.cloud_gate_cors_allow_null_origin
      cloud_gate_cors_allowed_origins   = cgcs.value.cloud_gate_cors_allowed_origins
      cloud_gate_cors_enabled           = cgcs.value.cloud_gate_cors_enabled
      cloud_gate_cors_exposed_headers   = cgcs.value.cloud_gate_cors_exposed_headers
      cloud_gate_cors_max_age           = cgcs.value.cloud_gate_cors_max_age
    }
  }
  cloud_migration_custom_url  = var.cloud_migration_custom_url
  cloud_migration_url_enabled = var.cloud_migration_url_enabled
  dynamic "company_names" {
    for_each = var.company_names != null ? var.company_names : []
    iterator = cn
    content {
      locale = cn.value.locale
      value  = cn.value.value
    }
  }
  contact_emails                                             = var.contact_emails
  csr_access                                                 = var.csr_access
  custom_branding                                            = var.custom_branding
  custom_css_location                                        = var.custom_css_location
  custom_html_location                                       = var.custom_html_location
  custom_translation                                         = var.custom_translation
  default_trust_scope                                        = var.default_trust_scope
  diagnostic_level                                           = var.diagnostic_level
  diagnostic_record_for_search_identifies_returned_resources = var.diagnostic_record_for_search_identifies_returned_resources
  enable_terms_of_use                                        = var.enable_terms_of_use
  external_id                                                = var.external_id
  iam_upst_session_expiry                                    = var.iam_upst_session_expiry
  id                                                         = var.id
  idcs_endpoint                                              = var.idcs_endpoint
  dynamic "images" {
    for_each = var.images != null ? var.images : []
    iterator = im
    content {
      display = im.value.display
      type    = im.value.type
      value   = im.value.value
    }
  }
  is_hosted_page = var.is_hosted_page
  issuer         = var.issuer
  locale         = var.locale
  dynamic "login_texts" {
    for_each = var.login_texts != null ? var.login_texts : []
    iterator = lt
    content {
      locale = lt.value.locale
      value  = lt.value.value
    }
  }
  max_no_of_app_cmva_to_return         = var.max_no_of_app_cmva_to_return
  max_no_of_app_role_members_to_return = var.max_no_of_app_role_members_to_return
  ocid                                 = var.ocid
  preferred_language                   = var.preferred_language
  prev_issuer                          = var.prev_issuer
  privacy_policy_url                   = var.privacy_policy_url
  dynamic "purge_configs" {
    for_each = var.purge_configs != null ? var.purge_configs : []
    iterator = pc
    content {
      resource_name    = pc.value.resource_name
      retention_period = pc.value.retention_period
    }
  }
  re_auth_factor                                  = var.re_auth_factor
  re_auth_when_changing_my_authentication_factors = var.re_auth_when_changing_my_authentication_factors
  resource_type_schema_version                    = var.resource_type_schema_version
  schemas                                         = var.schemas
  service_admin_cannot_list_other_users           = var.service_admin_cannot_list_other_users
  setting_id                                      = var.setting_id
  signing_cert_public_access                      = var.signing_cert_public_access
  sub_mapping_attr                                = var.sub_mapping_attr
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  dynamic "tenant_custom_claims" {
    for_each = var.tenant_custom_claims != null ? var.tenant_custom_claims : []
    iterator = tcc
    content {
      all_scopes = tcc.value.all_scopes
      expression = tcc.value.expression
      mode       = tcc.value.mode
      name       = tcc.value.name
      scopes     = tcc.value.scopes
      token_type = tcc.value.token_type
      value      = tcc.value.value
    }
  }
  terms_of_use_url = var.terms_of_use_url
  timezone         = var.timezone
}
