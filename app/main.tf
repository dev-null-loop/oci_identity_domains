resource "oci_identity_domains_app" "this" {
  access_token_expiry = var.access_token_expiry
  active              = var.active
  dynamic "alias_apps" {
    for_each = var.alias_apps != null ? var.alias_apps : []
    iterator = aa
    content {
      value = aa.value.value
    }
  }
  all_url_schemes_allowed = var.all_url_schemes_allowed
  allow_access_control    = var.allow_access_control
  allow_offline           = var.allow_offline
  allowed_grants          = var.allowed_grants
  allowed_operations      = var.allowed_operations
  dynamic "allowed_scopes" {
    for_each = var.allowed_scopes != null ? var.allowed_scopes : []
    iterator = as
    content {
      fqs = as.value.fqs
    }
  }
  dynamic "allowed_tags" {
    for_each = var.allowed_tags != null ? var.allowed_tags : []
    iterator = at
    content {
      key   = at.value.key
      value = at.value.value
    }
  }
  app_icon = var.app_icon
  dynamic "app_signon_policy" {
    for_each = var.app_signon_policy[*]
    iterator = asp
    content {
      value = asp.value.value
    }
  }
  app_thumbnail = var.app_thumbnail
  dynamic "apps_network_perimeters" {
    for_each = var.apps_network_perimeters != null ? var.apps_network_perimeters : []
    iterator = anp
    content {
      value = anp.value.value
    }
  }
  dynamic "as_opc_service" {
    for_each = var.as_opc_service[*]
    iterator = aos
    content {
      value = aos.value.value
    }
  }
  dynamic "attr_rendering_metadata" {
    for_each = var.attr_rendering_metadata != null ? var.attr_rendering_metadata : []
    iterator = arm
    content {
      datatype   = arm.value.datatype
      helptext   = arm.value.helptext
      label      = arm.value.label
      max_length = arm.value.max_length
      max_size   = arm.value.max_size
      min_length = arm.value.min_length
      min_size   = arm.value.min_size
      name       = arm.value.name
      order      = arm.value.order
      read_only  = arm.value.read_only
      regexp     = arm.value.regexp
      required   = arm.value.required
      section    = arm.value.section
      visible    = arm.value.visible
      widget     = arm.value.widget
    }
  }
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  audience       = var.audience
  authorization  = var.authorization
  based_on_template {
    value         = var.based_on_template.value
    well_known_id = var.based_on_template.well_known_id
  }
  bypass_consent = var.bypass_consent
  dynamic "certificates" {
    for_each = var.certificates != null ? var.certificates : []
    iterator = ce
    content {
      cert_alias = ce.value.cert_alias
    }
  }
  client_ip_checking                = var.client_ip_checking
  client_type                       = var.client_type
  contact_email_address             = var.contact_email_address
  delegated_service_names           = var.delegated_service_names
  description                       = var.description
  disable_kmsi_token_authentication = var.disable_kmsi_token_authentication
  display_name                      = var.display_name
  error_page_url                    = var.error_page_url
  force_delete                      = var.force_delete
  home_page_url                     = var.home_page_url
  icon                              = var.icon
  id_token_enc_algo                 = var.id_token_enc_algo
  idcs_endpoint                     = var.idcs_endpoint
  dynamic "identity_providers" {
    for_each = var.identity_providers != null ? var.identity_providers : []
    iterator = ip
    content {
      value = ip.value.value
    }
  }
  dynamic "idp_policy" {
    for_each = var.idp_policy[*]
    iterator = ip
    content {
      value = ip.value.value
    }
  }
  is_alias_app              = var.is_alias_app
  is_enterprise_app         = var.is_enterprise_app
  is_form_fill              = var.is_form_fill
  is_kerberos_realm         = var.is_kerberos_realm
  is_login_target           = var.is_login_target
  is_mobile_target          = var.is_mobile_target
  is_multicloud_service_app = var.is_multicloud_service_app
  is_oauth_client           = var.is_oauth_client
  is_oauth_resource         = var.is_oauth_resource
  is_obligation_capable     = var.is_obligation_capable
  is_radius_app             = var.is_radius_app
  is_saml_service_provider  = var.is_saml_service_provider
  is_unmanaged_app          = var.is_unmanaged_app
  is_web_tier_policy        = var.is_web_tier_policy
  landing_page_url          = var.landing_page_url
  linking_callback_url      = var.linking_callback_url
  login_mechanism           = var.login_mechanism
  login_page_url            = var.login_page_url
  logout_page_url           = var.logout_page_url
  logout_uri                = var.logout_uri
  name                      = var.name
  ocid                      = var.ocid
  post_logout_redirect_uris = var.post_logout_redirect_uris
  privacy_policy_url        = var.privacy_policy_url
  product_logo_url          = var.product_logo_url
  product_name              = var.product_name
  dynamic "protectable_secondary_audiences" {
    for_each = var.protectable_secondary_audiences != null ? var.protectable_secondary_audiences : []
    iterator = psa
    content {
      value = psa.value.value
    }
  }
  dynamic "radius_policy" {
    for_each = var.radius_policy[*]
    iterator = rp
    content {
      value = rp.value.value
    }
  }
  redirect_uris                = var.redirect_uris
  refresh_token_expiry         = var.refresh_token_expiry
  resource_type_schema_version = var.resource_type_schema_version
  dynamic "saml_service_provider" {
    for_each = var.saml_service_provider[*]
    iterator = ssp
    content {
      value = ssp.value.value
    }
  }
  schemas = var.schemas
  dynamic "scopes" {
    for_each = var.scopes != null ? var.scopes : []
    iterator = sc
    content {
      description      = sc.value.description
      display_name     = sc.value.display_name
      requires_consent = sc.value.requires_consent
      value            = sc.value.value
    }
  }
  secondary_audiences = var.secondary_audiences
  dynamic "service_params" {
    for_each = var.service_params != null ? var.service_params : []
    iterator = sp
    content {
      name  = sp.value.name
      value = sp.value.value
    }
  }
  service_type_urn     = var.service_type_urn
  service_type_version = var.service_type_version
  show_in_my_apps      = var.show_in_my_apps
  dynamic "signon_policy" {
    for_each = var.signon_policy[*]
    iterator = sp
    content {
      value = sp.value.value
    }
  }
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  terms_of_service_url = var.terms_of_service_url
  dynamic "terms_of_use" {
    for_each = var.terms_of_use[*]
    iterator = tou
    content {
      value = tou.value.value
    }
  }
  dynamic "trust_policies" {
    for_each = var.trust_policies != null ? var.trust_policies : []
    iterator = tp
    content {
      value = tp.value.value
    }
  }
  trust_scope = var.trust_scope
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
  dynamic "urnietfparamsscimschemasoracleidcsextensiondbcs_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensiondbcs_app[*]
    iterator = ua
    content {
      dynamic "domain_app" {
        for_each = ua.value.domain_app[*]
        iterator = da
        content {
          value = da.value.value
        }
      }
      domain_name = ua.value.domain_name
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionenterprise_app_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionenterprise_app_app[*]
    iterator = uaa
    content {
      allow_authz_decision_ttl = uaa.value.allow_authz_decision_ttl
      dynamic "allow_authz_policy" {
        for_each = uaa.value.allow_authz_policy[*]
        iterator = aap
        content {
          value = aap.value.value
        }
      }
      dynamic "app_resources" {
        for_each = uaa.value.app_resources != null ? uaa.value.app_resources : []
        iterator = ar
        content {
          value = ar.value.value
        }
      }
      deny_authz_decision_ttl = uaa.value.deny_authz_decision_ttl
      dynamic "deny_authz_policy" {
        for_each = uaa.value.deny_authz_policy[*]
        iterator = dap
        content {
          value = dap.value.value
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionform_fill_app_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionform_fill_app_app[*]
    iterator = ufaa
    content {
      configuration                    = ufaa.value.configuration
      form_cred_method                 = ufaa.value.form_cred_method
      form_credential_sharing_group_id = ufaa.value.form_credential_sharing_group_id
      dynamic "form_fill_url_match" {
        for_each = ufaa.value.form_fill_url_match != null ? ufaa.value.form_fill_url_match : []
        iterator = ffum
        content {
          form_url            = ffum.value.form_url
          form_url_match_type = ffum.value.form_url_match_type
        }
      }
      form_type                 = ufaa.value.form_type
      reveal_password_on_form   = ufaa.value.reveal_password_on_form
      user_name_form_expression = ufaa.value.user_name_form_expression
      user_name_form_template   = ufaa.value.user_name_form_template
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionform_fill_app_template_app_template" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionform_fill_app_template_app_template[*]
    iterator = ufatat
    content {
      configuration                    = ufatat.value.configuration
      form_cred_method                 = ufatat.value.form_cred_method
      form_credential_sharing_group_id = ufatat.value.form_credential_sharing_group_id
      dynamic "form_fill_url_match" {
        for_each = ufatat.value.form_fill_url_match != null ? ufatat.value.form_fill_url_match : []
        iterator = ffum
        content {
          form_url            = ffum.value.form_url
          form_url_match_type = ffum.value.form_url_match_type
        }
      }
      form_type                 = ufatat.value.form_type
      reveal_password_on_form   = ufatat.value.reveal_password_on_form
      sync_from_template        = ufatat.value.sync_from_template
      user_name_form_expression = ufatat.value.user_name_form_expression
      user_name_form_template   = ufatat.value.user_name_form_template
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionkerberos_realm_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionkerberos_realm_app[*]
    iterator = ura
    content {
      default_encryption_salt_type    = ura.value.default_encryption_salt_type
      master_key                      = ura.value.master_key
      max_renewable_age               = ura.value.max_renewable_age
      max_ticket_life                 = ura.value.max_ticket_life
      realm_name                      = ura.value.realm_name
      supported_encryption_salt_types = ura.value.supported_encryption_salt_types
      ticket_flags                    = ura.value.ticket_flags
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionmanagedapp_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionmanagedapp_app[*]
    iterator = ua
    content {
      admin_consent_granted = ua.value.admin_consent_granted
      dynamic "bundle_configuration_properties" {
        for_each = ua.value.bundle_configuration_properties != null ? ua.value.bundle_configuration_properties : []
        iterator = bcp
        content {
          confidential = bcp.value.confidential
          display_name = bcp.value.display_name
          help_message = bcp.value.help_message
          icf_type     = bcp.value.icf_type
          name         = bcp.value.name
          order        = bcp.value.order
          required     = bcp.value.required
          value        = bcp.value.value
        }
      }
      dynamic "bundle_pool_configuration" {
        for_each = ua.value.bundle_pool_configuration[*]
        iterator = bpc
        content {
          max_idle                       = bpc.value.max_idle
          max_objects                    = bpc.value.max_objects
          max_wait                       = bpc.value.max_wait
          min_evictable_idle_time_millis = bpc.value.min_evictable_idle_time_millis
          min_idle                       = bpc.value.min_idle
        }
      }
      connected                               = ua.value.connected
      enable_auth_sync_new_user_notification  = ua.value.enable_auth_sync_new_user_notification
      enable_sync                             = ua.value.enable_sync
      enable_sync_summary_report_notification = ua.value.enable_sync_summary_report_notification
      dynamic "flat_file_bundle_configuration_properties" {
        for_each = ua.value.flat_file_bundle_configuration_properties != null ? ua.value.flat_file_bundle_configuration_properties : []
        iterator = ffbcp
        content {
          confidential = ffbcp.value.confidential
          display_name = ffbcp.value.display_name
          help_message = ffbcp.value.help_message
          icf_type     = ffbcp.value.icf_type
          name         = ffbcp.value.name
          order        = ffbcp.value.order
          required     = ffbcp.value.required
          value        = ffbcp.value.value
        }
      }
      dynamic "flat_file_connector_bundle" {
        for_each = ua.value.flat_file_connector_bundle[*]
        iterator = ffcb
        content {
          display       = ffcb.value.display
          value         = ffcb.value.value
          well_known_id = ffcb.value.well_known_id
        }
      }
      is_authoritative = ua.value.is_authoritative
      dynamic "three_legged_oauth_credential" {
        for_each = ua.value.three_legged_oauth_credential[*]
        iterator = tloc
        content {
          access_token        = tloc.value.access_token
          access_token_expiry = tloc.value.access_token_expiry
          refresh_token       = tloc.value.refresh_token
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionmulticloud_service_app_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionmulticloud_service_app_app[*]
    iterator = usaa
    content {
      multicloud_platform_url = usaa.value.multicloud_platform_url
      multicloud_service_type = usaa.value.multicloud_service_type
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionopc_service_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionopc_service_app[*]
    iterator = usa
    content {
      service_instance_identifier = usa.value.service_instance_identifier
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionradius_app_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionradius_app_app[*]
    iterator = uaa
    content {
      capture_client_ip                  = uaa.value.capture_client_ip
      client_ip                          = uaa.value.client_ip
      country_code_response_attribute_id = uaa.value.country_code_response_attribute_id
      end_user_ip_attribute              = uaa.value.end_user_ip_attribute
      group_membership_radius_attribute  = uaa.value.group_membership_radius_attribute
      dynamic "group_membership_to_return" {
        for_each = uaa.value.group_membership_to_return != null ? uaa.value.group_membership_to_return : []
        iterator = gmtr
        content {
          value = gmtr.value.value
        }
      }
      group_name_format         = uaa.value.group_name_format
      include_group_in_response = uaa.value.include_group_in_response
      password_and_otp_together = uaa.value.password_and_otp_together
      port                      = uaa.value.port
      radius_vendor_specific_id = uaa.value.radius_vendor_specific_id
      response_format           = uaa.value.response_format
      response_format_delimiter = uaa.value.response_format_delimiter
      secret_key                = uaa.value.secret_key
      type_of_radius_app        = uaa.value.type_of_radius_app
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionrequestable_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionrequestable_app[*]
    iterator = ua
    content {
      requestable = ua.value.requestable
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionsaml_service_provider_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionsaml_service_provider_app[*]
    iterator = uspa
    content {
      assertion_consumer_url = uspa.value.assertion_consumer_url
      encrypt_assertion      = uspa.value.encrypt_assertion
      encryption_algorithm   = uspa.value.encryption_algorithm
      encryption_certificate = uspa.value.encryption_certificate
      federation_protocol    = uspa.value.federation_protocol
      dynamic "group_assertion_attributes" {
        for_each = uspa.value.group_assertion_attributes != null ? uspa.value.group_assertion_attributes : []
        iterator = gaa
        content {
          condition  = gaa.value.condition
          format     = gaa.value.format
          group_name = gaa.value.group_name
          name       = gaa.value.name
        }
      }
      hok_acs_url                       = uspa.value.hok_acs_url
      hok_required                      = uspa.value.hok_required
      include_signing_cert_in_signature = uspa.value.include_signing_cert_in_signature
      key_encryption_algorithm          = uspa.value.key_encryption_algorithm
      logout_binding                    = uspa.value.logout_binding
      logout_enabled                    = uspa.value.logout_enabled
      logout_request_url                = uspa.value.logout_request_url
      logout_response_url               = uspa.value.logout_response_url
      metadata                          = uspa.value.metadata
      name_id_format                    = uspa.value.name_id_format
      name_id_userstore_attribute       = uspa.value.name_id_userstore_attribute
      partner_provider_id               = uspa.value.partner_provider_id
      partner_provider_pattern          = uspa.value.partner_provider_pattern
      sign_response_or_assertion        = uspa.value.sign_response_or_assertion
      signature_hash_algorithm          = uspa.value.signature_hash_algorithm
      signing_certificate               = uspa.value.signing_certificate
      succinct_id                       = uspa.value.succinct_id
      dynamic "user_assertion_attributes" {
        for_each = uspa.value.user_assertion_attributes != null ? uspa.value.user_assertion_attributes : []
        iterator = uaa
        content {
          format                    = uaa.value.format
          name                      = uaa.value.name
          user_store_attribute_name = uaa.value.user_store_attribute_name
        }
      }
    }
  }
  dynamic "urnietfparamsscimschemasoracleidcsextensionweb_tier_policy_app" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionweb_tier_policy_app[*]
    iterator = utpa
    content {
      resource_ref               = utpa.value.resource_ref
      web_tier_policy_az_control = utpa.value.web_tier_policy_az_control
      web_tier_policy_json       = utpa.value.web_tier_policy_json
    }
  }
}
