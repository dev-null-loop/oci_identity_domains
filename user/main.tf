resource "oci_identity_domains_user" "this" {
  idcs_endpoint = var.idcs_endpoint
  schemas       = var.schemas
  user_name     = var.user_name
  authorization = var.authorization
  description   = var.description
  display_name  = var.display_name
  dynamic "emails" { /* One and only one "emails" block needs to have "primary" set to true */
    for_each = var.emails
    content {
      type      = emails.value.type
      value     = emails.value.value
      primary   = emails.value.primary
      secondary = emails.value.secondary
      verified  = emails.value.verified
    }
  }
  dynamic "name" {
    for_each = var.name[*]
    content {
      family_name      = name.value.family_name
      formatted        = name.value.formatted
      given_name       = name.value.given_name
      honorific_prefix = name.value.honorific_prefix
      honorific_suffix = name.value.honorific_suffix
      middle_name      = name.value.middle_name
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextension_oci_tags" {
    for_each = var.urnietfparamsscimschemasoracleidcsextension_oci_tags[*]
    iterator = uot
    content {
      defined_tags {
	key       = uot.value.defined_tags.key
	namespace = uot.value.defined_tags.namespace
	value     = uot.value.defined_tags.value
      }
      freeform_tags {
	key   = uot.value.freeform_tags.key
	value = uot.value.freeform_tags.value
      }
    }
  }
  urnietfparamsscimschemasoracleidcsextensioncapabilities_user {
    can_use_api_keys                 = true
    can_use_auth_tokens              = true
    can_use_console                  = false
    can_use_console_password         = true
    can_use_customer_secret_keys     = true
    can_use_db_credentials           = true
    can_use_oauth2client_credentials = true
    can_use_smtp_credentials         = true
  }
  urnietfparamsscimschemasoracleidcsextensionmfa_user {
    login_attempts                  = 0
    mfa_enabled_on                  = null
    mfa_ignored_apps                = []
    mfa_status                      = "ENROLLED"
    preferred_authentication_factor = "PUSH"
    preferred_authentication_method = null
    preferred_third_party_vendor    = null

    # preferred_device {
    #   display = null
    #   ref     = "https://idcs-3bd620bcdd6f4b5abd41fc79861ae4b7.identity.oraclecloud.com:443/admin/v1/Devices/10d48ff3532b4042a3a7ff924b35bc99"
    #   value   = "10d48ff3532b4042a3a7ff924b35bc99"
    # }
  }

  urnietfparamsscimschemasoracleidcsextensionuser_state_user {
    last_failed_login_date     = null
    last_successful_login_date = null
    # login_attempts                 = 0
    max_concurrent_sessions        = 0
    previous_successful_login_date = null
    # recovery_attempts              = 0
    # recovery_enroll_attempts       = 0

    locked {
      expired   = false
      lock_date = null
      on        = false
      reason    = 0
    }
  }
  urnietfparamsscimschemasoracleidcsextensionuser_user {
    account_recovery_required = false
    # accounts                  = []
    # app_roles                 = []
    # applicable_authentication_target_app = []
    bypass_notification         = false
    creation_mechanism          = null
    do_not_show_getting_started = false
    # grants                               = []
    group_membership_last_modified = null
    # idcs_app_roles_limited_to_groups           = []
    # is_account_recovery_enrolled               = false
    is_authentication_delegated                = false
    is_federated_user                          = false
    is_group_membership_normalized             = false
    is_group_membership_synced_to_users_groups = false
    notification_email_template_id             = null
    preferred_ui_landing_page                  = "OciConsole"
    service_user                               = false
    status                                     = null
    # support_accounts                           = []
    user_flow_controlled_by_external_client = false
    user_provider                           = null
    # user_token                                 = []
  }
}

#   urnietfparamsscimschemasextensionenterprise20user {

#     #Optional
#     cost_center     = var.user_urnietfparamsscimschemasextensionenterprise20user_cost_center
#     department      = var.user_urnietfparamsscimschemasextensionenterprise20user_department
#     division        = var.user_urnietfparamsscimschemasextensionenterprise20user_division
#     employee_number = var.user_urnietfparamsscimschemasextensionenterprise20user_employee_number
#     manager {

#       #Optional
#       value = var.user_urnietfparamsscimschemasextensionenterprise20user_manager_value
#     }
#     organization = var.user_urnietfparamsscimschemasextensionenterprise20user_organization
#   }
#   urnietfparamsscimschemasoracleidcsextension_oci_tags {

#     #Optional
#     defined_tags {
#       #Required
#       key       = var.user_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_key
#       namespace = var.user_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_namespace
#       value     = var.user_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_value
#     }
#     freeform_tags {
#       #Required
#       key   = var.user_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_key
#       value = var.user_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_value
#     }
#   }
#   urnietfparamsscimschemasoracleidcsextensionadaptive_user {

#     #Optional
#     risk_level = var.user_urnietfparamsscimschemasoracleidcsextensionadaptive_user_risk_level
#     risk_scores {
#       #Required
#       last_update_timestamp = var.user_urnietfparamsscimschemasoracleidcsextensionadaptive_user_risk_scores_last_update_timestamp
#       risk_level            = var.user_urnietfparamsscimschemasoracleidcsextensionadaptive_user_risk_scores_risk_level
#       score                 = var.user_urnietfparamsscimschemasoracleidcsextensionadaptive_user_risk_scores_score
#       value                 = var.user_urnietfparamsscimschemasoracleidcsextensionadaptive_user_risk_scores_value

#       #Optional
#       source = var.user_urnietfparamsscimschemasoracleidcsextensionadaptive_user_risk_scores_source
#       status = var.user_urnietfparamsscimschemasoracleidcsextensionadaptive_user_risk_scores_status
#     }
#   }
#   urnietfparamsscimschemasoracleidcsextensioncapabilities_user {

#     #Optional
#     can_use_api_keys                 = true
#     can_use_auth_tokens              = true
#     can_use_console_password         = true
#     can_use_customer_secret_keys     = true
#     can_use_db_credentials           = true
#     can_use_oauth2client_credentials = true
#     can_use_smtp_credentials         = true
#   }
#   urnietfparamsscimschemasoracleidcsextensiondb_credentials_user {

#     #Optional
#     db_user_name = "dbUserName"
#   }
#   urnietfparamsscimschemasoracleidcsextensionkerberos_user_user {

#     #Optional
#     realm_users {
#       #Required
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionkerberos_user_user_realm_users_value

#       #Optional
#       principal_name = var.user_urnietfparamsscimschemasoracleidcsextensionkerberos_user_user_realm_users_principal_name
#       realm_name     = var.user_urnietfparamsscimschemasoracleidcsextensionkerberos_user_user_realm_users_realm_name
#     }
#   }
#   urnietfparamsscimschemasoracleidcsextensionmfa_user {

#     #Optional
#     bypass_codes {
#       #Required
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_bypass_codes_value
#     }
#     devices {
#       #Required
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_devices_value

#       #Optional
#       authentication_method   = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_devices_authentication_method
#       display                 = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_devices_display
#       factor_status           = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_devices_factor_status
#       factor_type             = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_devices_factor_type
#       last_sync_time          = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_devices_last_sync_time
#       status                  = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_devices_status
#       third_party_vendor_name = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_devices_third_party_vendor_name
#     }
#     login_attempts                  = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_login_attempts
#     mfa_enabled_on                  = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_mfa_enabled_on
#     mfa_ignored_apps                = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_mfa_ignored_apps
#     mfa_status                      = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_mfa_status
#     preferred_authentication_factor = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_preferred_authentication_factor
#     preferred_authentication_method = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_preferred_authentication_method
#     preferred_device {
#       #Required
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_preferred_device_value

#       #Optional
#       display = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_preferred_device_display
#     }
#     preferred_third_party_vendor = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_preferred_third_party_vendor
#     trusted_user_agents {
#       #Required
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_trusted_user_agents_value

#       #Optional
#       display = var.user_urnietfparamsscimschemasoracleidcsextensionmfa_user_trusted_user_agents_display
#     }
#   }
#   urnietfparamsscimschemasoracleidcsextensionpasswordless_user {

#     #Optional
#     factor_identifier {
#       #Required
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionpasswordless_user_factor_identifier_value

#       #Optional
#       display = var.user_urnietfparamsscimschemasoracleidcsextensionpasswordless_user_factor_identifier_display
#     }
#     factor_method = var.user_urnietfparamsscimschemasoracleidcsextensionpasswordless_user_factor_method
#     factor_type   = var.user_urnietfparamsscimschemasoracleidcsextensionpasswordless_user_factor_type
#   }
#   urnietfparamsscimschemasoracleidcsextensionposix_user {

#     #Optional
#     gecos          = var.user_urnietfparamsscimschemasoracleidcsextensionposix_user_gecos
#     gid_number     = var.user_urnietfparamsscimschemasoracleidcsextensionposix_user_gid_number
#     home_directory = var.user_urnietfparamsscimschemasoracleidcsextensionposix_user_home_directory
#     login_shell    = var.user_urnietfparamsscimschemasoracleidcsextensionposix_user_login_shell
#     uid_number     = var.user_urnietfparamsscimschemasoracleidcsextensionposix_user_uid_number
#   }
#   urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user {

#     #Optional
#     sec_questions {
#       #Required
#       answer = var.user_urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user_sec_questions_answer
#       value  = var.user_urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user_sec_questions_value

#       #Optional
#       hint_text = var.user_urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user_sec_questions_hint_text
#     }
#   }
#   urnietfparamsscimschemasoracleidcsextensionself_change_user {

#     #Optional
#     allow_self_change = var.user_urnietfparamsscimschemasoracleidcsextensionself_change_user_allow_self_change
#   }
#   urnietfparamsscimschemasoracleidcsextensionself_registration_user {
#     #Required
#     self_registration_profile {
#       #Required
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionself_registration_user_self_registration_profile_value

#       #Optional
#       display = var.user_urnietfparamsscimschemasoracleidcsextensionself_registration_user_self_registration_profile_display
#     }

#     #Optional
#     consent_granted = var.user_urnietfparamsscimschemasoracleidcsextensionself_registration_user_consent_granted
#     user_token      = var.user_urnietfparamsscimschemasoracleidcsextensionself_registration_user_user_token
#   }
#   urnietfparamsscimschemasoracleidcsextensionsff_user {

#     #Optional
#     sff_auth_keys = var.user_urnietfparamsscimschemasoracleidcsextensionsff_user_sff_auth_keys
#   }
#   urnietfparamsscimschemasoracleidcsextensionsocial_account_user {

#     #Optional
#     social_accounts {
#       #Required
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionsocial_account_user_social_accounts_value

#       #Optional
#       display = var.user_urnietfparamsscimschemasoracleidcsextensionsocial_account_user_social_accounts_display
#     }
#   }
#   urnietfparamsscimschemasoracleidcsextensionterms_of_use_user {

#     #Optional
#     terms_of_use_consents {
#       #Required
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionterms_of_use_user_terms_of_use_consents_value
#     }
#   }
#   urnietfparamsscimschemasoracleidcsextensionuser_state_user {

#     #Optional
#     locked {

#       #Optional
#       expired   = var.user_urnietfparamsscimschemasoracleidcsextensionuser_state_user_locked_expired
#       lock_date = var.user_urnietfparamsscimschemasoracleidcsextensionuser_state_user_locked_lock_date
#       on        = var.user_urnietfparamsscimschemasoracleidcsextensionuser_state_user_locked_on
#       reason    = var.user_urnietfparamsscimschemasoracleidcsextensionuser_state_user_locked_reason
#     }
#     max_concurrent_sessions = var.user_urnietfparamsscimschemasoracleidcsextensionuser_state_user_max_concurrent_sessions
#     recovery_locked {

#       #Optional
#       lock_date = var.user_urnietfparamsscimschemasoracleidcsextensionuser_state_user_recovery_locked_lock_date
#       on        = var.user_urnietfparamsscimschemasoracleidcsextensionuser_state_user_recovery_locked_on
#     }
#   }
#   urnietfparamsscimschemasoracleidcsextensionuser_user {

#     #Optional
#     user_provider             = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_user_provider
#     account_recovery_required = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_account_recovery_required
#     bypass_notification       = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_bypass_notification
#     creation_mechanism        = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_creation_mechanism
#     delegated_authentication_target_app {
#       #Required
#       type  = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_delegated_authentication_target_app_type
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_delegated_authentication_target_app_value

#       #Optional
#       display = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_delegated_authentication_target_app_display
#     }
#     do_not_show_getting_started                = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_do_not_show_getting_started
#     is_authentication_delegated                = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_is_authentication_delegated
#     is_federated_user                          = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_is_federated_user
#     is_group_membership_normalized             = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_is_group_membership_normalized
#     is_group_membership_synced_to_users_groups = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_is_group_membership_synced_to_users_groups
#     notification_email_template_id             = oci_identity_domains_notification_email_template.test_notification_email_template.id
#     preferred_ui_landing_page                  = var.user_urn_ietf_params_scim_schemas_oracle_idcs_extension_user_user_preferred_ui_landing_page
#     service_user                               = var.user_urn_ietf_params_scim_schemas_oracle_idcs_extension_user_user_service_user
#     synced_from_app {
#       #Required
#       type  = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_synced_from_app_type
#       value = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_synced_from_app_value

#       #Optional
#       display = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_synced_from_app_display
#     }
#     user_flow_controlled_by_external_client = var.user_urnietfparamsscimschemasoracleidcsextensionuser_user_user_flow_controlled_by_external_client
#   }
#   user_type = var.user_user_type
#   x509certificates {
#     #Required
#     value = var.user_x509certificates_value

#     #Optional
#     display = var.user_x509certificates_display
#     primary = var.user_x509certificates_primary
#     type    = var.user_x509certificates_type
#   }
# }
