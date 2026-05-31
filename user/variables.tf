variable "active" {
  description = "(Optional) (Updatable) User status"
  type        = bool
  default     = null
}

variable "addresses" {
  description = "(Optional) (Updatable) A physical mailing address for this User, as described in (address Element). Canonical Type Values of work, home, and other. The value attribute is a complex type with the following sub-attributes."
  type = list(object({
    country        = optional(string)
    formatted      = optional(string)
    locality       = optional(string)
    postal_code    = optional(string)
    primary        = optional(bool)
    region         = optional(string)
    street_address = optional(string)
    type           = string
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

variable "authorization" {
  description = "(Optional) (Updatable) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Description of the user"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) Display name"
  type        = string
  default     = null
}

variable "emails" {
  description = "(Optional) (Updatable) A complex attribute representing emails"
  type = list(object({
    primary   = optional(bool)
    secondary = optional(bool)
    type      = string
    value     = string
    verified  = optional(bool)
  }))
  default = []
}

variable "entitlements" {
  description = "(Optional) (Updatable) A list of entitlements for the User that represent a thing the User has."
  type = list(object({
    display = optional(string)
    primary = optional(bool)
    type    = string
    value   = string
  }))
  default = []
}

variable "external_id" {
  description = "(Optional) (Updatable) An identifier for the Resource as defined by the Service Consumer. The externalId may simplify identification of the Resource between Service Consumer and Service Provider by allowing the Consumer to refer to the Resource with its own identifier, obviating the need to store a local mapping between the local identifier of the Resource and the identifier used by the Service Provider. Each Resource MAY include a non-empty externalId value. The value of the externalId attribute is always issued by the Service Consumer and can never be specified by the Service Provider. The Service Provider MUST always interpret the externalId as scoped to the Service Consumer's tenant."
  type        = string
  default     = null
}

variable "force_delete" {
  description = "(Optional) (Updatable) To force delete the resource and all its references (if any). Need to `terraform apply` first before `terraform destroy`."
  type        = bool
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "ims" {
  description = "(Optional) (Updatable) User's instant messaging addresses"
  type = list(object({
    display = optional(string)
    primary = optional(bool)
    type    = string
    value   = string
  }))
  default = []
}

variable "locale" {
  description = "(Optional) (Updatable) Used to indicate the User's default location for purposes of localizing items such as currency, date and time format, numerical representations, and so on."
  type        = string
  default     = null
}

variable "name" {
  description = "(Optional) (Updatable) A complex attribute that contains attributes representing the name"
  type = object({
    family_name      = optional(string)
    formatted        = optional(string)
    given_name       = optional(string)
    honorific_prefix = optional(string)
    honorific_suffix = optional(string)
    middle_name      = optional(string)
  })
  default = null
}

variable "nick_name" {
  description = "(Optional) (Updatable) Nick name"
  type        = string
  default     = null
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "password" {
  description = "(Optional) (Updatable) Password attribute. Max length for password is controlled via Password Policy."
  type        = string
  default     = null
  sensitive   = true
}

variable "phone_numbers" {
  description = "(Optional) (Updatable) Phone numbers"
  type = list(object({
    primary = optional(bool)
    type    = string
    value   = string
  }))
  default = []
}

variable "photos" {
  description = "(Optional) (Updatable) URLs of photos for the User"
  type = list(object({
    display = optional(string)
    primary = optional(bool)
    type    = string
    value   = string
  }))
  default = []
}

variable "preferred_language" {
  description = "(Optional) (Updatable) User's preferred written or spoken language used for localized user interfaces"
  type        = string
  default     = null
}

variable "profile_url" {
  description = "(Optional) (Updatable) A fully-qualified URL to a page representing the User's online profile"
  type        = string
  default     = null
}

variable "resource_type_schema_version" {
  description = "(Optional) (Updatable) An endpoint-specific schema version number to use in the Request. Allowed version values are Earliest Version or Latest Version as specified in each REST API endpoint description, or any sequential number inbetween. All schema attributes/body parameters are a part of version 1. After version 1, any attributes added or deprecated will be tagged with the version that they were added to or deprecated in. If no version is provided, the latest schema version is returned."
  type        = string
  default     = null
}

variable "roles" {
  description = "(Optional) (Updatable) A list of roles for the User that collectively represent who the User is; e.g., 'Student', 'Faculty'."
  type = list(object({
    display = optional(string)
    primary = optional(bool)
    type    = string
    value   = string
  }))
  default = []
}

variable "schemas" {
  description = "(Required) (Updatable) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \\\"enterprise\\\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "tags" {
  description = "(Optional) (Updatable) A list of tags on this resource."
  type = list(object({
    key   = string
    value = string
  }))
  default = []
}

variable "timezone" {
  description = "(Optional) (Updatable) User's timezone"
  type        = string
  default     = null
}

variable "title" {
  description = "(Optional) (Updatable) Title"
  type        = string
  default     = null
}

variable "urnietfparamsscimschemasextensionenterprise20user" {
  description = "(Optional) (Updatable) Enterprise User"
  type = object({
    cost_center     = optional(string)
    department      = optional(string)
    division        = optional(string)
    employee_number = optional(string)
    manager = optional(object({
      value = optional(string)
    }))
    organization = optional(string)
  })
  default = null
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

variable "urnietfparamsscimschemasoracleidcsextensionadaptive_user" {
  description = "(Optional) (Updatable) This extension defines attributes to manage user's risk score."
  type = object({
    risk_level = optional(string)
    risk_scores = optional(list(object({
      last_update_timestamp = string
      risk_level            = string
      score                 = number
      source                = optional(string)
      status                = optional(string)
      value                 = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensioncapabilities_user" {
  description = "(Optional) (Updatable) User's Capabilities"
  type = object({
    can_use_api_keys                 = optional(bool)
    can_use_auth_tokens              = optional(bool)
    can_use_console                  = optional(bool)
    can_use_console_password         = optional(bool)
    can_use_customer_secret_keys     = optional(bool)
    can_use_db_credentials           = optional(bool)
    can_use_oauth2client_credentials = optional(bool)
    can_use_smtp_credentials         = optional(bool)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensiondb_credentials_user" {
  description = "(Optional) (Updatable) The database credentials user extension."
  type = object({
    db_user_name = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionkerberos_user_user" {
  description = "(Optional) (Updatable) Kerberos User extension"
  type = object({
    realm_users = optional(list(object({
      principal_name = optional(string)
      realm_name     = optional(string)
      value          = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionmfa_user" {
  description = "(Optional) (Updatable) This extension defines attributes used to manage Multi-Factor Authentication within a service provider. The extension is typically applied to a User resource, but MAY be applied to other resources that use MFA."
  type = object({
    bypass_codes = optional(list(object({
      value = string
    })))
    devices = optional(list(object({
      authentication_method   = optional(string)
      display                 = optional(string)
      factor_status           = optional(string)
      factor_type             = optional(string)
      last_sync_time          = optional(string)
      status                  = optional(string)
      third_party_vendor_name = optional(string)
      value                   = string
    })))
    login_attempts                  = optional(number)
    mfa_enabled_on                  = optional(string)
    mfa_ignored_apps                = optional(list(string))
    mfa_status                      = optional(string)
    preferred_authentication_factor = optional(string)
    preferred_authentication_method = optional(string)
    preferred_device = optional(object({
      display = optional(string)
      value   = string
    }))
    preferred_third_party_vendor = optional(string)
    trusted_user_agents = optional(list(object({
      display = optional(string)
      value   = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionpasswordless_user" {
  description = "(Optional) (Updatable) This extension defines attributes used to manage Passwordless-Factor Authentication within a service provider. The extension is typically applied to a User resource, but MAY be applied to other resources that use MFA."
  type = object({
    factor_identifier = optional(object({
      display = optional(string)
      value   = string
    }))
    factor_method = optional(string)
    factor_type   = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionposix_user" {
  description = "(Optional) (Updatable) POSIX User extension"
  type = object({
    gecos          = optional(string)
    gid_number     = optional(number)
    home_directory = optional(string)
    login_shell    = optional(string)
    uid_number     = optional(number)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionsecurity_questions_user" {
  description = "(Optional) (Updatable) This extension defines the attributes used to store the security questions of a user."
  type = object({
    sec_questions = optional(list(object({
      answer    = string
      hint_text = optional(string)
      value     = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionself_change_user" {
  description = "(Optional) (Updatable) Controls whether a user can update themselves or not via User related APIs"
  type = object({
    allow_self_change = optional(bool)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionself_registration_user" {
  description = "(Optional) (Updatable) This extension defines attributes used to manage self registration profile linked to the user."
  type = object({
    consent_granted = optional(bool)
    self_registration_profile = object({
      display = optional(string)
      value   = string
    })
    user_token = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionsff_user" {
  description = "(Optional) (Updatable) SFF Auth Keys User extension"
  type = object({
    sff_auth_keys = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionsocial_account_user" {
  description = "(Optional) (Updatable) Social User extension"
  type = object({
    social_accounts = optional(list(object({
      display = optional(string)
      value   = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionterms_of_use_user" {
  description = "(Optional) (Updatable) Terms Of Use extension"
  type = object({
    terms_of_use_consents = optional(list(object({
      value = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionuser_state_user" {
  description = "(Optional) (Updatable) This extension defines the attributes used to manage account passwords within a service provider. The extension is typically applied to a User resource, but MAY be applied to other resources that use passwords."
  type = object({
    locked = optional(object({
      expired   = optional(bool)
      lock_date = optional(string)
      on        = optional(bool)
      reason    = optional(number)
    }))
    max_concurrent_sessions = optional(number)
    recovery_locked = optional(object({
      lock_date = optional(string)
      on        = optional(bool)
    }))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionuser_user" {
  description = "(Optional) (Updatable) Oracle Identity Cloud Service User"
  type = object({
    user_provider             = optional(string)
    account_recovery_required = optional(bool)
    bypass_notification       = optional(bool)
    creation_mechanism        = optional(string)
    delegated_authentication_target_app = optional(object({
      display = optional(string)
      type    = string
      value   = string
    }))
    do_not_show_getting_started                = optional(bool)
    is_authentication_delegated                = optional(bool)
    is_federated_user                          = optional(bool)
    is_group_membership_normalized             = optional(bool)
    is_group_membership_synced_to_users_groups = optional(bool)
    notification_email_template_id             = optional(string)
    preferred_ui_landing_page                  = optional(string)
    service_user                               = optional(bool)
    synced_from_app = optional(object({
      display = optional(string)
      type    = string
      value   = string
    }))
    user_flow_controlled_by_external_client = optional(bool)
  })
  default = null
}

variable "user_name" {
  description = "(Required) (Updatable) User name"
  type        = string
}

variable "user_type" {
  description = "(Optional) (Updatable) Used to identify the organization-to-user relationship"
  type        = string
  default     = null
}

variable "x509certificates" {
  description = "(Optional) (Updatable) A list of certificates issued to the User."
  type = list(object({
    display = optional(string)
    primary = optional(bool)
    type    = optional(string)
    value   = string
  }))
  default = []
}
