resource "oci_identity_domains_user" "this" {
  idcs_endpoint = var.idcs_endpoint
  active        = true
  display_name  = var.display_name
  user_name     = var.user_name
  dynamic "emails" {
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
      family_name = name.value.family_name
      formatted   = name.value.formatted
      given_name  = name.value.given_name
    }
  }
  schemas = var.schemas
  urnietfparamsscimschemasoracleidcsextension_oci_tags {
    dynamic "defined_tags" {
      for_each = var.urnietfparamsscimschemasoracleidcsextension_oci_tags
      iterator = uot
      content {
	key       = uot.value.key
	namespace = uot.value.namespace
	value     = uot.value.value
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensioncapabilities_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensioncapabilities_user[*]
    iterator = uu
    content {
      can_use_api_keys                 = uu.value.can_use_api_keys
      can_use_auth_tokens              = uu.value.can_use_auth_tokens
      can_use_console_password         = uu.value.can_use_console_password
      can_use_customer_secret_keys     = uu.value.can_use_customer_secret_keys
      can_use_db_credentials           = uu.value.can_use_db_credentials
      can_use_oauth2client_credentials = uu.value.can_use_oauth2client_credentials
      can_use_smtp_credentials         = uu.value.can_use_smtp_credentials
    }
  }
  # urnietfparamsscimschemasoracleidcsextensionmfa_user {
  #   login_attempts                  = 0
  #   mfa_ignored_apps                = []
  #   mfa_status                      = "ENROLLED"
  #   preferred_authentication_factor = "PUSH"
  #   preferred_device {
  #     value = "10d48ff3532b4042a3a7ff924b35bc99"
  #   }
  # }
  # urnietfparamsscimschemasoracleidcsextensionuser_state_user {
  #   locked {
  #     on = false
  #   }
  # }
  urnietfparamsscimschemasoracleidcsextensionuser_user {
    service_user = true
    #creation_mechanism = ""
    #is_federated_user  = true
    # preferred_ui_landing_page = "OciConsole"
    # user_provider = ""
  }
}
