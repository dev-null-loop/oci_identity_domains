resource "oci_identity_domains_user" "this" {
  active = var.active
  dynamic "addresses" {
    for_each = var.addresses != null ? var.addresses : []
    iterator = ad
    content {
      country        = ad.value.country
      formatted      = ad.value.formatted
      locality       = ad.value.locality
      postal_code    = ad.value.postal_code
      primary        = ad.value.primary
      region         = ad.value.region
      street_address = ad.value.street_address
      type           = ad.value.type
    }
  }
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  description    = var.description
  display_name   = var.display_name
  dynamic "emails" {
    for_each = var.emails != null ? var.emails : []
    iterator = em
    content {
      primary   = em.value.primary
      secondary = em.value.secondary
      type      = em.value.type
      value     = em.value.value
      verified  = em.value.verified
    }
  }
  dynamic "entitlements" {
    for_each = var.entitlements != null ? var.entitlements : []
    iterator = en
    content {
      display = en.value.display
      primary = en.value.primary
      type    = en.value.type
      value   = en.value.value
    }
  }
  external_id   = var.external_id
  force_delete  = var.force_delete
  idcs_endpoint = var.idcs_endpoint
  dynamic "ims" {
    for_each = var.ims != null ? var.ims : []
    iterator = im
    content {
      display = im.value.display
      primary = im.value.primary
      type    = im.value.type
      value   = im.value.value
    }
  }
  locale = var.locale
  dynamic "name" {
    for_each = var.name[*]
    iterator = na
    content {
      family_name      = na.value.family_name
      formatted        = na.value.formatted
      given_name       = na.value.given_name
      honorific_prefix = na.value.honorific_prefix
      honorific_suffix = na.value.honorific_suffix
      middle_name      = na.value.middle_name
    }
  }
  nick_name = var.nick_name
  ocid      = var.ocid
  password  = var.password
  dynamic "phone_numbers" {
    for_each = var.phone_numbers != null ? var.phone_numbers : []
    iterator = pn
    content {
      primary = pn.value.primary
      type    = pn.value.type
      value   = pn.value.value
    }
  }
  dynamic "photos" {
    for_each = var.photos != null ? var.photos : []
    iterator = ph
    content {
      display = ph.value.display
      primary = ph.value.primary
      type    = ph.value.type
      value   = ph.value.value
    }
  }
  preferred_language           = var.preferred_language
  profile_url                  = var.profile_url
  resource_type_schema_version = var.resource_type_schema_version
  dynamic "roles" {
    for_each = var.roles != null ? var.roles : []
    iterator = ro
    content {
      display = ro.value.display
      primary = ro.value.primary
      type    = ro.value.type
      value   = ro.value.value
    }
  }
  schemas = var.schemas
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  timezone = var.timezone
  title    = var.title
  dynamic "urnietfparamsscimschemasextensionenterprise20user" {
    for_each = var.urnietfparamsscimschemasextensionenterprise20user[*]
    iterator = ur
    content {
      cost_center     = ur.value.cost_center
      department      = ur.value.department
      division        = ur.value.division
      employee_number = ur.value.employee_number
      dynamic "manager" {
        for_each = ur.value.manager[*]
        iterator = ma
        content {
          value = ma.value.value
        }
      }
      organization = ur.value.organization
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextension_oci_tags" {
    for_each = var.urnietfparamsscimschemasoracleidcsextension_oci_tags[*]
    iterator = uot
    content {
      dynamic "defined_tags" {
        for_each = uot.value.defined_tags != null ? uot.value.defined_tags : []
        iterator = dt
        content {
          key       = dt.value.key
          namespace = dt.value.namespace
          value     = dt.value.value
        }
      }
      dynamic "freeform_tags" {
        for_each = uot.value.freeform_tags != null ? uot.value.freeform_tags : []
        iterator = ft
        content {
          key   = ft.value.key
          value = ft.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionadaptive_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionadaptive_user[*]
    iterator = uu
    content {
      risk_level = uu.value.risk_level
      dynamic "risk_scores" {
        for_each = uu.value.risk_scores != null ? uu.value.risk_scores : []
        iterator = rs
        content {
          last_update_timestamp = rs.value.last_update_timestamp
          risk_level            = rs.value.risk_level
          score                 = rs.value.score
          source                = rs.value.source
          status                = rs.value.status
          value                 = rs.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensioncapabilities_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensioncapabilities_user[*]
    iterator = uu
    content {
      can_use_api_keys                 = uu.value.can_use_api_keys
      can_use_auth_tokens              = uu.value.can_use_auth_tokens
      can_use_console                  = uu.value.can_use_console
      can_use_console_password         = uu.value.can_use_console_password
      can_use_customer_secret_keys     = uu.value.can_use_customer_secret_keys
      can_use_db_credentials           = uu.value.can_use_db_credentials
      can_use_oauth2client_credentials = uu.value.can_use_oauth2client_credentials
      can_use_smtp_credentials         = uu.value.can_use_smtp_credentials
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensiondb_credentials_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensiondb_credentials_user[*]
    iterator = ucu
    content {
      db_user_name = ucu.value.db_user_name
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionkerberos_user_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionkerberos_user_user[*]
    iterator = uuu
    content {
      dynamic "realm_users" {
        for_each = uuu.value.realm_users != null ? uuu.value.realm_users : []
        iterator = ru
        content {
          principal_name = ru.value.principal_name
          realm_name     = ru.value.realm_name
          value          = ru.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionmfa_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionmfa_user[*]
    iterator = uu
    content {
      dynamic "bypass_codes" {
        for_each = uu.value.bypass_codes != null ? uu.value.bypass_codes : []
        iterator = bc
        content {
          value = bc.value.value
        }
      }
      dynamic "devices" {
        for_each = uu.value.devices != null ? uu.value.devices : []
        iterator = de
        content {
          authentication_method   = de.value.authentication_method
          display                 = de.value.display
          factor_status           = de.value.factor_status
          factor_type             = de.value.factor_type
          last_sync_time          = de.value.last_sync_time
          status                  = de.value.status
          third_party_vendor_name = de.value.third_party_vendor_name
          value                   = de.value.value
        }
      }
      login_attempts                  = uu.value.login_attempts
      mfa_enabled_on                  = uu.value.mfa_enabled_on
      mfa_ignored_apps                = uu.value.mfa_ignored_apps
      mfa_status                      = uu.value.mfa_status
      preferred_authentication_factor = uu.value.preferred_authentication_factor
      preferred_authentication_method = uu.value.preferred_authentication_method
      dynamic "preferred_device" {
        for_each = uu.value.preferred_device[*]
        iterator = pd
        content {
          display = pd.value.display
          value   = pd.value.value
        }
      }
      preferred_third_party_vendor = uu.value.preferred_third_party_vendor
      dynamic "trusted_user_agents" {
        for_each = uu.value.trusted_user_agents != null ? uu.value.trusted_user_agents : []
        iterator = tua
        content {
          display = tua.value.display
          value   = tua.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionpasswordless_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionpasswordless_user[*]
    iterator = uu
    content {
      dynamic "factor_identifier" {
        for_each = uu.value.factor_identifier[*]
        iterator = fi
        content {
          display = fi.value.display
          value   = fi.value.value
        }
      }
      factor_method = uu.value.factor_method
      factor_type   = uu.value.factor_type
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionposix_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionposix_user[*]
    iterator = uu
    content {
      gecos          = uu.value.gecos
      gid_number     = uu.value.gid_number
      home_directory = uu.value.home_directory
      login_shell    = uu.value.login_shell
      uid_number     = uu.value.uid_number
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user[*]
    iterator = uqu
    content {
      dynamic "sec_questions" {
        for_each = uqu.value.sec_questions != null ? uqu.value.sec_questions : []
        iterator = sq
        content {
          answer    = sq.value.answer
          hint_text = sq.value.hint_text
          value     = sq.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionself_change_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionself_change_user[*]
    iterator = ucu
    content {
      allow_self_change = ucu.value.allow_self_change
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionself_registration_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionself_registration_user[*]
    iterator = uru
    content {
      consent_granted = uru.value.consent_granted
      self_registration_profile {
        display = uru.value.self_registration_profile.display
        value   = uru.value.self_registration_profile.value
      }
      user_token = uru.value.user_token
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionsff_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionsff_user[*]
    iterator = uu
    content {
      sff_auth_keys = uu.value.sff_auth_keys
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionsocial_account_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionsocial_account_user[*]
    iterator = uau
    content {
      dynamic "social_accounts" {
        for_each = uau.value.social_accounts != null ? uau.value.social_accounts : []
        iterator = sa
        content {
          display = sa.value.display
          value   = sa.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionterms_of_use_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionterms_of_use_user[*]
    iterator = uouu
    content {
      dynamic "terms_of_use_consents" {
        for_each = uouu.value.terms_of_use_consents != null ? uouu.value.terms_of_use_consents : []
        iterator = touc
        content {
          value = touc.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionuser_state_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionuser_state_user[*]
    iterator = usu
    content {
      dynamic "locked" {
        for_each = usu.value.locked[*]
        iterator = lo
        content {
          expired   = lo.value.expired
          lock_date = lo.value.lock_date
          on        = lo.value.on
          reason    = lo.value.reason
        }
      }
      max_concurrent_sessions = usu.value.max_concurrent_sessions
      dynamic "recovery_locked" {
        for_each = usu.value.recovery_locked[*]
        iterator = rl
        content {
          lock_date = rl.value.lock_date
          on        = rl.value.on
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionuser_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionuser_user[*]
    iterator = uu
    content {
      user_provider             = uu.value.user_provider
      account_recovery_required = uu.value.account_recovery_required
      bypass_notification       = uu.value.bypass_notification
      creation_mechanism        = uu.value.creation_mechanism
      dynamic "delegated_authentication_target_app" {
        for_each = uu.value.delegated_authentication_target_app[*]
        iterator = data
        content {
          display = data.value.display
          type    = data.value.type
          value   = data.value.value
        }
      }
      do_not_show_getting_started                = uu.value.do_not_show_getting_started
      is_authentication_delegated                = uu.value.is_authentication_delegated
      is_federated_user                          = uu.value.is_federated_user
      is_group_membership_normalized             = uu.value.is_group_membership_normalized
      is_group_membership_synced_to_users_groups = uu.value.is_group_membership_synced_to_users_groups
      notification_email_template_id             = uu.value.notification_email_template_id
      preferred_ui_landing_page                  = uu.value.preferred_ui_landing_page
      service_user                               = uu.value.service_user
      dynamic "synced_from_app" {
        for_each = uu.value.synced_from_app[*]
        iterator = sfa
        content {
          display = sfa.value.display
          type    = sfa.value.type
          value   = sfa.value.value
        }
      }
      user_flow_controlled_by_external_client = uu.value.user_flow_controlled_by_external_client
    }
  }
  user_name = var.user_name
  user_type = var.user_type
  dynamic "x509certificates" {
    for_each = var.x509certificates != null ? var.x509certificates : []
    iterator = x5
    content {
      display = x5.value.display
      primary = x5.value.primary
      type    = x5.value.type
      value   = x5.value.value
    }
  }
}
