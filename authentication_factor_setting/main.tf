resource "oci_identity_domains_authentication_factor_setting" "this" {
  attribute_sets                    = var.attribute_sets
  attributes                        = var.attributes
  authentication_factor_setting_id  = var.authentication_factor_setting_id
  authorization                     = var.authorization
  auto_enroll_email_factor_disabled = var.auto_enroll_email_factor_disabled
  bypass_code_enabled               = var.bypass_code_enabled
  bypass_code_settings {
    help_desk_code_expiry_in_mins   = var.bypass_code_settings.help_desk_code_expiry_in_mins
    help_desk_generation_enabled    = var.bypass_code_settings.help_desk_generation_enabled
    help_desk_max_usage             = var.bypass_code_settings.help_desk_max_usage
    length                          = var.bypass_code_settings.length
    max_active                      = var.bypass_code_settings.max_active
    self_service_generation_enabled = var.bypass_code_settings.self_service_generation_enabled
  }
  client_app_settings {
    device_protection_policy            = var.client_app_settings.device_protection_policy
    initial_lockout_period_in_secs      = var.client_app_settings.initial_lockout_period_in_secs
    key_pair_length                     = var.client_app_settings.key_pair_length
    lockout_escalation_pattern          = var.client_app_settings.lockout_escalation_pattern
    max_failures_before_lockout         = var.client_app_settings.max_failures_before_lockout
    max_failures_before_warning         = var.client_app_settings.max_failures_before_warning
    max_lockout_interval_in_secs        = var.client_app_settings.max_lockout_interval_in_secs
    min_pin_length                      = var.client_app_settings.min_pin_length
    policy_update_freq_in_days          = var.client_app_settings.policy_update_freq_in_days
    request_signing_algo                = var.client_app_settings.request_signing_algo
    shared_secret_encoding              = var.client_app_settings.shared_secret_encoding
    unlock_app_for_each_request_enabled = var.client_app_settings.unlock_app_for_each_request_enabled
    unlock_app_interval_in_secs         = var.client_app_settings.unlock_app_interval_in_secs
    unlock_on_app_foreground_enabled    = var.client_app_settings.unlock_on_app_foreground_enabled
    unlock_on_app_start_enabled         = var.client_app_settings.unlock_on_app_start_enabled
  }
  dynamic "compliance_policy" {
    for_each = var.compliance_policy
    iterator = cp
    content {
      action = cp.value.action
      name   = cp.value.name
      value  = cp.value.value
    }
  }
  email_enabled = var.email_enabled
  dynamic "email_settings" {
    for_each = var.email_settings[*]
    iterator = es
    content {
      email_link_custom_url = es.value.email_link_custom_url
      email_link_enabled    = es.value.email_link_enabled
    }
  }
  endpoint_restrictions {
    max_endpoint_trust_duration_in_days = var.endpoint_restrictions.max_endpoint_trust_duration_in_days
    max_enrolled_devices                = var.endpoint_restrictions.max_enrolled_devices
    max_incorrect_attempts              = var.endpoint_restrictions.max_incorrect_attempts
    max_trusted_endpoints               = var.endpoint_restrictions.max_trusted_endpoints
    trusted_endpoints_enabled           = var.endpoint_restrictions.trusted_endpoints_enabled
  }
  fido_authenticator_enabled = var.fido_authenticator_enabled
  hide_backup_factor_enabled = var.hide_backup_factor_enabled
  idcs_endpoint              = var.idcs_endpoint
  dynamic "identity_store_settings" {
    for_each = var.identity_store_settings[*]
    iterator = iss
    content {
      mobile_number_enabled        = iss.value.mobile_number_enabled
      mobile_number_update_enabled = iss.value.mobile_number_update_enabled
    }
  }
  mfa_enrollment_type = var.mfa_enrollment_type
  notification_settings {
    pull_enabled = var.notification_settings.pull_enabled
  }
  ocid                         = var.ocid
  phone_call_enabled           = var.phone_call_enabled
  push_enabled                 = var.push_enabled
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  security_questions_enabled   = var.security_questions_enabled
  sms_enabled                  = var.sms_enabled
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  dynamic "third_party_factor" {
    for_each = var.third_party_factor[*]
    iterator = tpf
    content {
      duo_security = tpf.value.duo_security
    }
  }
  totp_enabled = var.totp_enabled
  totp_settings {
    email_otp_validity_duration_in_mins = var.totp_settings.email_otp_validity_duration_in_mins
    email_passcode_length               = var.totp_settings.email_passcode_length
    hashing_algorithm                   = var.totp_settings.hashing_algorithm
    jwt_validity_duration_in_secs       = var.totp_settings.jwt_validity_duration_in_secs
    key_refresh_interval_in_days        = var.totp_settings.key_refresh_interval_in_days
    passcode_length                     = var.totp_settings.passcode_length
    sms_otp_validity_duration_in_mins   = var.totp_settings.sms_otp_validity_duration_in_mins
    sms_passcode_length                 = var.totp_settings.sms_passcode_length
    time_step_in_secs                   = var.totp_settings.time_step_in_secs
    time_step_tolerance                 = var.totp_settings.time_step_tolerance
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings[*]
    iterator = uafs
    content {
      attestation                                  = uafs.value.attestation
      authenticator_selection_attachment           = uafs.value.authenticator_selection_attachment
      authenticator_selection_require_resident_key = uafs.value.authenticator_selection_require_resident_key
      authenticator_selection_resident_key         = uafs.value.authenticator_selection_resident_key
      authenticator_selection_user_verification    = uafs.value.authenticator_selection_user_verification
      domain_validation_level                      = uafs.value.domain_validation_level
      exclude_credentials                          = uafs.value.exclude_credentials
      public_key_types                             = uafs.value.public_key_types
      timeout                                      = uafs.value.timeout
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings[*]
    iterator = upafs
    content {
      dynamic "duo_security_settings" {
        for_each = upafs.value.duo_security_settings[*]
        iterator = dss
        content {
          api_hostname           = dss.value.api_hostname
          attestation_key        = dss.value.attestation_key
          integration_key        = dss.value.integration_key
          secret_key             = dss.value.secret_key
          user_mapping_attribute = dss.value.user_mapping_attribute
        }
      }
    }
  }
  user_enrollment_disabled_factors = var.user_enrollment_disabled_factors
  yubico_otp_enabled               = var.yubico_otp_enabled
}
