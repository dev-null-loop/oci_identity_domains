variable "access_token_expiry" {
  description = "(Optional) (Updatable) Expiry-time in seconds for an Access Token. Any token that allows access to this App will expire after the specified duration."
  type        = number
  default     = null
}

variable "active" {
  description = "(Optional) (Updatable) If true, this App is able to participate in runtime services, such as automatic-login, OAuth, and SAML. If false, all runtime services are disabled for this App, and only administrative operations can be performed."
  type        = bool
  default     = null
}

variable "alias_apps" {
  description = "(Optional) (Updatable) Each value of this internal attribute refers to an Oracle Public Cloud infrastructure App on which this App depends."
  type = list(object({
    value = string
  }))
  default = []
}

variable "all_url_schemes_allowed" {
  description = "(Optional) (Updatable) If true, indicates that the system should allow all URL-schemes within each value of the 'redirectUris' attribute.  Also indicates that the system should not attempt to confirm that each value of the 'redirectUris' attribute is a valid URI.  In particular, the system should not confirm that the domain component of the URI is a top-level domain and the system should not confirm that the hostname portion is a valid system that is reachable over the network."
  type        = bool
  default     = null
}

variable "allow_access_control" {
  description = "(Optional) (Updatable) If true, any managed App that is based on this template is checked for access control that is, access to this app is subject to successful authorization at SSO service, viz. app grants to start with."
  type        = bool
  default     = null
}

variable "allow_offline" {
  description = "(Optional) (Updatable) If true, indicates that the Refresh Token is allowed when this App acts as an OAuth Resource."
  type        = bool
  default     = null
}

variable "allowed_grants" {
  description = "(Optional) (Updatable) List of grant-types that this App is allowed to use when it acts as an OAuthClient."
  type        = set(string)
  default     = []
}

variable "allowed_operations" {
  description = "(Optional) (Updatable) OPTIONAL. Required only when this App acts as an OAuthClient. Supported values are 'introspect' and 'onBehalfOfUser'. The value 'introspect' allows the client to look inside the access-token. The value 'onBehalfOfUser' overrides how the client's privileges are combined with the privileges of the Subject User. Ordinarily, authorization calculates the set of effective privileges as the intersection of the client's privileges and the user's privileges. The value 'onBehalfOf' indicates that authorization should ignore the privileges of the client and use only the user's privileges to calculate the effective privileges."
  type        = set(string)
  default     = []
}

variable "allowed_scopes" {
  description = "(Optional) (Updatable) A list of scopes (exposed by this App or by other Apps) that this App is allowed to access when it acts as an OAuthClient."
  type = list(object({
    fqs = string
  }))
  default = []
}

variable "allowed_tags" {
  description = "(Optional) (Updatable) A list of tags, acting as an OAuthClient, this App is allowed to access."
  type = list(object({
    key   = string
    value = string
  }))
  default = []
}

variable "app_icon" {
  description = "(Optional) (Updatable) Application icon."
  type        = string
  default     = null
}

variable "app_signon_policy" {
  description = "(Optional) (Updatable) App Sign-on Policy."
  type = object({
    value = string
  })
  default = null
}

variable "app_thumbnail" {
  description = "(Optional) (Updatable) Application thumbnail."
  type        = string
  default     = null
}

variable "apps_network_perimeters" {
  description = "(Optional) (Updatable) Network Perimeter"
  type = list(object({
    value = string
  }))
  default = []
}

variable "as_opc_service" {
  description = "(Optional) (Updatable) OPCService facet of the application."
  type = object({
    value = string
  })
  default = null
}

variable "attr_rendering_metadata" {
  description = "(Optional) (Updatable) Label for the attribute to be shown in the UI."
  type = list(object({
    datatype   = optional(string)
    helptext   = optional(string)
    label      = optional(string)
    max_length = optional(number)
    max_size   = optional(number)
    min_length = optional(number)
    min_size   = optional(number)
    name       = string
    order      = optional(number)
    read_only  = optional(bool)
    regexp     = optional(string)
    required   = optional(bool)
    section    = optional(string)
    visible    = optional(bool)
    widget     = optional(string)
  }))
  default = []
}

variable "attribute_sets" {
  description = "(Optional) (Updatable) A multi-valued list of strings indicating the return type of attribute definition. The specified set of attributes can be fetched by the return type of the attribute. One or more values can be given together to fetch more than one group of attributes. If 'attributes' query parameter is also available, union of the two is fetched. Valid values - all, always, never, request, default. Values are case-insensitive."
  type        = list(string)
  default     = []
}

variable "attributes" {
  description = "(Optional) (Updatable) A comma-delimited string that specifies the names of resource attributes that should be returned in the response. By default, a response that contains resource attributes contains only attributes that are defined in the schema for that resource type as returned=always or returned=default. An attribute that is defined as returned=request is returned in a response only if the request specifies its name in the value of this query parameter. If a request specifies this query parameter, the response contains the attributes that this query parameter specifies, as well as any attribute that is defined as returned=always."
  type        = string
  default     = null
}

variable "audience" {
  description = "(Optional) (Updatable) The base URI for all of the scopes defined in this App. The value of 'audience' is combined with the 'value' of each scope to form an 'fqs' or fully qualified scope."
  type        = string
  default     = null
}

variable "authorization" {
  description = "(Optional) (Updatable) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "based_on_template" {
  description = "(Required) (Updatable) Application template on which the application is based."
  type = object({
    value         = string
    well_known_id = optional(string)
  })
}

variable "bypass_consent" {
  description = "(Optional) (Updatable) If true, indicates that consent should be skipped for all scopes"
  type        = bool
  default     = null
}

variable "certificates" {
  description = "(Optional) (Updatable) Each value of this attribute represent a certificate that this App uses when it acts as an OAuthClient."
  type = list(object({
    cert_alias = string
  }))
  default = []
}

variable "client_ip_checking" {
  description = "(Optional) (Updatable) Network Perimeters checking mode"
  type        = string
  default     = null
}

variable "client_type" {
  description = "(Optional) (Updatable) Specifies the type of access that this App has when it acts as an OAuthClient."
  type        = string
  default     = null
}

variable "contact_email_address" {
  description = "(Optional) (Updatable) Contact Email Address"
  type        = string
  default     = null
}

variable "delegated_service_names" {
  description = "(Optional) (Updatable) Service Names allow to use Oracle Cloud Infrastructure signature for client authentication instead of client credentials"
  type        = set(string)
  default     = []
}

variable "description" {
  description = "(Optional) (Updatable) Description of the application."
  type        = string
  default     = null
}

variable "disable_kmsi_token_authentication" {
  description = "(Optional) (Updatable) Indicates whether the application is allowed to be access using kmsi token."
  type        = bool
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) Display name of the application. Display name is intended to be user-friendly, and an administrator can change the value at any time."
  type        = string
}

variable "error_page_url" {
  description = "(Optional) (Updatable) This attribute specifies the URL of the page to which an application will redirect an end-user in case of error."
  type        = string
  default     = null
}

variable "force_delete" {
  description = "(Optional) (Updatable) To force delete the resource and all its references (if any). Need to `terraform apply` first before `terraform destroy`."
  type        = bool
  default     = null
}

variable "home_page_url" {
  description = "(Optional) (Updatable) Home Page URL"
  type        = string
  default     = null
}

variable "icon" {
  description = "(Optional) (Updatable) URL of application icon."
  type        = string
  default     = null
}

variable "id_token_enc_algo" {
  description = "(Optional) (Updatable) Encryption Alogrithm to use for encrypting ID token."
  type        = string
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "identity_providers" {
  description = "(Optional) (Updatable) A list of IdentityProvider assigned to app. A user trying to access this app will be automatically redirected to configured IdP during the authentication phase, before being able to access App."
  type = list(object({
    value = string
  }))
  default = []
}

variable "idp_policy" {
  description = "(Optional) (Updatable) IDP Policy."
  type = object({
    value = string
  })
  default = null
}

variable "is_alias_app" {
  description = "(Optional) If true, this App is an AliasApp and it cannot be granted to an end-user directly."
  type        = bool
  default     = null
}

variable "is_enterprise_app" {
  description = "(Optional) (Updatable) If true, this app acts as Enterprise app with Authentication and URL Authz policy."
  type        = bool
  default     = null
}

variable "is_form_fill" {
  description = "(Optional) (Updatable) If true, this application acts as FormFill Application"
  type        = bool
  default     = null
}

variable "is_kerberos_realm" {
  description = "(Optional) (Updatable) If true, indicates that this App supports Kerberos Authentication"
  type        = bool
  default     = null
}

variable "is_login_target" {
  description = "(Optional) (Updatable) If true, this App allows runtime services to log end users into this App automatically."
  type        = bool
  default     = null
}

variable "is_mobile_target" {
  description = "(Optional) (Updatable) If true, indicates that the App should be visible in each end-user's mobile application."
  type        = bool
  default     = null
}

variable "is_multicloud_service_app" {
  description = "(Optional) (Updatable) If true, indicates the app is used for multicloud service integration."
  type        = bool
  default     = null
}

variable "is_oauth_client" {
  description = "(Optional) (Updatable) If true, this application acts as an OAuth Client"
  type        = bool
  default     = null
}

variable "is_oauth_resource" {
  description = "(Optional) (Updatable) If true, indicates that this application acts as an OAuth Resource."
  type        = bool
  default     = null
}

variable "is_obligation_capable" {
  description = "(Optional) (Updatable) This flag indicates if the App is capable of validating obligations with the token for allowing access to the App."
  type        = bool
  default     = null
}

variable "is_radius_app" {
  description = "(Optional) (Updatable) If true, this application acts as an Radius App"
  type        = bool
  default     = null
}

variable "is_saml_service_provider" {
  description = "(Optional) (Updatable) If true, then this App acts as a SAML Service Provider."
  type        = bool
  default     = null
}

variable "is_unmanaged_app" {
  description = "(Optional) If true, indicates that this application accepts an Oracle Cloud Identity Service User as a login-identity (does not require an account) and relies for authorization on the User's memberships in AppRoles."
  type        = bool
  default     = null
}

variable "is_web_tier_policy" {
  description = "(Optional) (Updatable) If true, the webtier policy is active"
  type        = bool
  default     = null
}

variable "landing_page_url" {
  description = "(Optional) (Updatable) The URL of the landing page for this App, which is the first page that an end user should see if runtime services log that end user in to this App automatically."
  type        = string
  default     = null
}

variable "linking_callback_url" {
  description = "(Optional) (Updatable) This attribute specifies the callback URL for the social linking operation."
  type        = string
  default     = null
}

variable "login_mechanism" {
  description = "(Optional) (Updatable) The protocol that runtime services will use to log end users in to this App automatically. If 'OIDC', then runtime services use the OpenID Connect protocol. If 'SAML', then runtime services use Security Assertion Markup Language protocol."
  type        = string
  default     = null
}

variable "login_page_url" {
  description = "(Optional) (Updatable) This attribute specifies the URL of the page that the App uses when an end-user signs in to that App."
  type        = string
  default     = null
}

variable "logout_page_url" {
  description = "(Optional) (Updatable) This attribute specifies the URL of the page that the App uses when an end-user signs out."
  type        = string
  default     = null
}

variable "logout_uri" {
  description = "(Optional) (Updatable) OAuth will use this URI to logout if this App wants to participate in SSO, and if this App's session gets cleared as part of global logout. Note: This attribute is used only if this App acts as an OAuthClient."
  type        = string
  default     = null
}

variable "name" {
  description = "(Optional) Name of the application. Also serves as username if the application authenticates to Oracle Public Cloud infrastructure. This name may not be user-friendly and cannot be changed once an App is created."
  type        = string
  default     = null
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "post_logout_redirect_uris" {
  description = "(Optional) (Updatable) Each value of this attribute is the URI of a landing page within this App. It is used only when this App, acting as an OAuthClient, initiates the logout flow and wants to be redirected back to one of its landing pages."
  type        = set(string)
  default     = []
}

variable "privacy_policy_url" {
  description = "(Optional) (Updatable) Privacy Policy URL"
  type        = string
  default     = null
}

variable "product_logo_url" {
  description = "(Optional) (Updatable) Application Logo URL"
  type        = string
  default     = null
}

variable "product_name" {
  description = "(Optional) (Updatable) Product Name"
  type        = string
  default     = null
}

variable "protectable_secondary_audiences" {
  description = "(Optional) (Updatable) A list of secondary audiences--additional URIs to be added automatically to any OAuth token that allows access to this App. Note: This attribute is used mainly for backward compatibility in certain Oracle Public Cloud Apps."
  type = list(object({
    value = string
  }))
  default = []
}

variable "radius_policy" {
  description = "(Optional) (Updatable) RADIUS Policy assigned to this application."
  type = object({
    value = string
  })
  default = null
}

variable "redirect_uris" {
  description = "(Optional) (Updatable) OPTIONAL. Each value is a URI within this App. This attribute is required when this App acts as an OAuthClient and is involved in three-legged flows (authorization-code flows)."
  type        = set(string)
  default     = []
}

variable "refresh_token_expiry" {
  description = "(Optional) (Updatable) Expiry-time in seconds for a Refresh Token.  Any token that allows access to this App, once refreshed, will expire after the specified duration."
  type        = number
  default     = null
}

variable "resource_type_schema_version" {
  description = "(Optional) (Updatable) An endpoint-specific schema version number to use in the Request. Allowed version values are Earliest Version or Latest Version as specified in each REST API endpoint description, or any sequential number inbetween. All schema attributes/body parameters are a part of version 1. After version 1, any attributes added or deprecated will be tagged with the version that they were added to or deprecated in. If no version is provided, the latest schema version is returned."
  type        = string
  default     = null
}

variable "saml_service_provider" {
  description = "(Optional) (Updatable) An attribute that refers to the SAML Service Provider that runtime services will use to log an end user in to this App automatically. Note that this will be used only if the loginMechanism is 'SAML'."
  type = object({
    value = string
  })
  default = null
}

variable "schemas" {
  description = "(Required) (Updatable) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \\\"enterprise\\\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "scopes" {
  description = "(Optional) (Updatable) Scopes defined by this App. Used when this App acts as an OAuth Resource."
  type = list(object({
    description      = optional(string)
    display_name     = optional(string)
    requires_consent = optional(bool)
    value            = string
  }))
  default = []
}

variable "secondary_audiences" {
  description = "(Optional) (Updatable) A list of secondary audiences--additional URIs to be added automatically to any OAuth token that allows access to this App. Note: This attribute is used mainly for backward compatibility in certain Oracle Public Cloud Apps."
  type        = set(string)
  default     = []
}

variable "service_params" {
  description = "(Optional) (Updatable) Custom attribute that is required to compute other attribute values during app creation."
  type = list(object({
    name  = string
    value = optional(string)
  }))
  default = []
}

variable "service_type_urn" {
  description = "(Optional) (Updatable) This Uniform Resource Name (URN) value identifies the type of Oracle Public Cloud service of which this app is an instance."
  type        = string
  default     = null
}

variable "service_type_version" {
  description = "(Optional) (Updatable) This value specifies the version of the Oracle Public Cloud service of which this App is an instance"
  type        = string
  default     = null
}

variable "show_in_my_apps" {
  description = "(Optional) (Updatable) If true, this app will be displayed in the MyApps page of each end-user who has access to the App."
  type        = bool
  default     = null
}

variable "signon_policy" {
  description = "(Optional) (Updatable) Sign-on Policy."
  type = object({
    value = string
  })
  default = null
}

variable "tags" {
  description = "(Optional) (Updatable) A list of tags on this resource."
  type = list(object({
    key   = string
    value = string
  }))
  default = []
}

variable "terms_of_service_url" {
  description = "(Optional) (Updatable) Terms of Service URL"
  type        = string
  default     = null
}

variable "terms_of_use" {
  description = "(Optional) (Updatable) Terms Of Use."
  type = object({
    value = string
  })
  default = null
}

variable "trust_policies" {
  description = "(Optional) (Updatable) Trust Policies."
  type = list(object({
    value = string
  }))
  default = []
}

variable "trust_scope" {
  description = "(Optional) (Updatable) Indicates the scope of trust for this App when acting as an OAuthClient. A value of 'Explicit' indicates that the App is allowed to access only the scopes of OAuthResources that are explicitly specified as 'allowedScopes'. A value of 'Account' indicates that the App is allowed implicitly to access any scope of any OAuthResource within the same Oracle Cloud Account. A value of 'Tags' indicates that the App is allowed to access any scope of any OAuthResource with a matching tag within the same Oracle Cloud Account. A value of 'Default' indicates that the Tenant default trust scope configured in the Tenant Settings is used."
  type        = string
  default     = null
}

variable "urnietfparamsscimschemasoracleidcsextension_oci_tags" {
  description = "(Optional) (Updatable) Oracle Cloud Infrastructure Tags."
  type = object({
    defined_tags = optional(list(object({
      key       = string
      namespace = string
      value     = string
    })))
    freeform_tags = optional(list(object({
      key   = string
      value = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensiondbcs_app" {
  description = "(Optional) (Updatable) This extension provides attributes for database service facet of an App"
  type = object({
    domain_app = optional(object({
      value = string
    }))
    domain_name = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionenterprise_app_app" {
  description = "(Optional) (Updatable) This extension defines the Enterprise App related attributes."
  type = object({
    allow_authz_decision_ttl = optional(number)
    allow_authz_policy = optional(object({
      value = string
    }))
    app_resources = optional(list(object({
      value = string
    })))
    deny_authz_decision_ttl = optional(number)
    deny_authz_policy = optional(object({
      value = string
    }))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionform_fill_app_app" {
  description = "(Optional) (Updatable) This extension provides attributes for Form-Fill facet of App"
  type = object({
    configuration                    = optional(string)
    form_cred_method                 = optional(string)
    form_credential_sharing_group_id = optional(string)
    form_fill_url_match = optional(list(object({
      form_url            = string
      form_url_match_type = optional(string)
    })))
    form_type                 = optional(string)
    reveal_password_on_form   = optional(bool)
    user_name_form_expression = optional(string)
    user_name_form_template   = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionform_fill_app_template_app_template" {
  description = "(Optional) (Updatable) This extension provides attributes for Form-Fill facet of AppTemplate"
  type = object({
    configuration                    = optional(string)
    form_cred_method                 = optional(string)
    form_credential_sharing_group_id = optional(string)
    form_fill_url_match = optional(list(object({
      form_url            = string
      form_url_match_type = optional(string)
    })))
    form_type                 = optional(string)
    reveal_password_on_form   = optional(bool)
    sync_from_template        = optional(bool)
    user_name_form_expression = optional(string)
    user_name_form_template   = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionkerberos_realm_app" {
  description = "(Optional) (Updatable) Kerberos Realm"
  type = object({
    default_encryption_salt_type    = optional(string)
    master_key                      = optional(string)
    max_renewable_age               = optional(number)
    max_ticket_life                 = optional(number)
    realm_name                      = optional(string)
    supported_encryption_salt_types = optional(set(string))
    ticket_flags                    = optional(number)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionmanagedapp_app" {
  description = "(Optional) (Updatable) Managed App"
  type = object({
    admin_consent_granted = optional(bool)
    bundle_configuration_properties = optional(list(object({
      confidential = optional(bool)
      display_name = optional(string)
      help_message = optional(string)
      icf_type     = string
      name         = string
      order        = optional(number)
      required     = bool
      value        = optional(set(string))
    })))
    bundle_pool_configuration = optional(object({
      max_idle                       = optional(number)
      max_objects                    = optional(number)
      max_wait                       = optional(number)
      min_evictable_idle_time_millis = optional(number)
      min_idle                       = optional(number)
    }))
    connected                               = optional(bool)
    enable_auth_sync_new_user_notification  = optional(bool)
    enable_sync                             = optional(bool)
    enable_sync_summary_report_notification = optional(bool)
    flat_file_bundle_configuration_properties = optional(list(object({
      confidential = optional(bool)
      display_name = optional(string)
      help_message = optional(string)
      icf_type     = string
      name         = string
      order        = optional(number)
      required     = bool
      value        = optional(set(string))
    })))
    flat_file_connector_bundle = optional(object({
      display       = optional(string)
      value         = string
      well_known_id = optional(string)
    }))
    is_authoritative = optional(bool)
    three_legged_oauth_credential = optional(object({
      access_token        = optional(string)
      access_token_expiry = optional(string)
      refresh_token       = optional(string)
    }))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionmulticloud_service_app_app" {
  description = "(Optional) (Updatable) This extension defines attributes specific to Apps that represent instances of Multicloud Service App"
  type = object({
    multicloud_platform_url = optional(string)
    multicloud_service_type = string
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionopc_service_app" {
  description = "(Optional) (Updatable) This extension defines attributes specific to Apps that represent instances of an Oracle Public Cloud (OPC) service."
  type = object({
    service_instance_identifier = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionradius_app_app" {
  description = "(Optional) (Updatable) This extension defines attributes specific to Apps that represent instances of Radius App."
  type = object({
    capture_client_ip                  = optional(bool)
    client_ip                          = string
    country_code_response_attribute_id = optional(string)
    end_user_ip_attribute              = optional(string)
    group_membership_radius_attribute  = optional(string)
    group_membership_to_return = optional(list(object({
      value = string
    })))
    group_name_format         = optional(string)
    include_group_in_response = bool
    password_and_otp_together = optional(bool)
    port                      = string
    radius_vendor_specific_id = optional(string)
    response_format           = optional(string)
    response_format_delimiter = optional(string)
    secret_key                = string
    type_of_radius_app        = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionrequestable_app" {
  description = "(Optional) (Updatable) Requestable App"
  type = object({
    requestable = optional(bool)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionsaml_service_provider_app" {
  description = "(Optional) (Updatable) This extension defines attributes related to the Service Providers configuration."
  type = object({
    assertion_consumer_url = optional(string)
    encrypt_assertion      = optional(bool)
    encryption_algorithm   = optional(string)
    encryption_certificate = optional(string)
    federation_protocol    = optional(string)
    group_assertion_attributes = optional(list(object({
      condition  = optional(string)
      format     = optional(string)
      group_name = optional(string)
      name       = string
    })))
    hok_acs_url                       = optional(string)
    hok_required                      = optional(bool)
    include_signing_cert_in_signature = optional(bool)
    key_encryption_algorithm          = optional(string)
    logout_binding                    = optional(string)
    logout_enabled                    = optional(bool)
    logout_request_url                = optional(string)
    logout_response_url               = optional(string)
    metadata                          = optional(string)
    name_id_format                    = optional(string)
    name_id_userstore_attribute       = optional(string)
    partner_provider_id               = optional(string)
    partner_provider_pattern          = optional(string)
    sign_response_or_assertion        = optional(string)
    signature_hash_algorithm          = optional(string)
    signing_certificate               = optional(string)
    succinct_id                       = optional(string)
    user_assertion_attributes = optional(list(object({
      format                    = optional(string)
      name                      = string
      user_store_attribute_name = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionweb_tier_policy_app" {
  description = "(Optional) (Updatable) WebTier Policy"
  type = object({
    resource_ref               = optional(bool)
    web_tier_policy_az_control = optional(string)
    web_tier_policy_json       = optional(string)
  })
  default = null
}
