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

variable "authentication_factor_setting_id" {
  description = "(Required) ID of the resource"
  type        = string
}

variable "authorization" {
  description = "(Optional) (Updatable) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "auto_enroll_email_factor_disabled" {
  description = "(Optional) (Updatable) If true, indicates that email will not be enrolled as a MFA factor automatically if it a account recovery factor"
  type        = bool
  default     = null
}

variable "bypass_code_enabled" {
  description = "(Required) (Updatable) If true, indicates that Bypass Code is enabled for authentication"
  type        = bool
}

variable "bypass_code_settings" {
  description = "(Required) (Updatable) Settings related to the bypass code, such as bypass code length, bypass code expiry, max active bypass codes, and so on"
  type = object({
    help_desk_code_expiry_in_mins   = number
    help_desk_generation_enabled    = bool
    help_desk_max_usage             = number
    length                          = number
    max_active                      = number
    self_service_generation_enabled = bool
  })
}

variable "client_app_settings" {
  description = "(Required) (Updatable) Settings related to compliance, Personal Identification Number (PIN) policy, and so on"
  type = object({
    device_protection_policy            = string
    initial_lockout_period_in_secs      = number
    key_pair_length                     = number
    lockout_escalation_pattern          = string
    max_failures_before_lockout         = number
    max_failures_before_warning         = number
    max_lockout_interval_in_secs        = number
    min_pin_length                      = number
    policy_update_freq_in_days          = number
    request_signing_algo                = string
    shared_secret_encoding              = string
    unlock_app_for_each_request_enabled = bool
    unlock_app_interval_in_secs         = number
    unlock_on_app_foreground_enabled    = bool
    unlock_on_app_start_enabled         = bool
  })
}

variable "compliance_policy" {
  description = "(Required) (Updatable) Compliance Policy that defines actions to be taken when a condition is violated"
  type = list(object({
    action = string
    name   = string
    value  = string
  }))
}

variable "email_enabled" {
  description = "(Optional) (Updatable) If true, indicates that the EMAIL channel is enabled for authentication"
  type        = bool
  default     = null
}

variable "email_settings" {
  description = "(Optional) (Updatable) Settings related to Email Factor, such as enabled email magic link factor, custom url for Email Link"
  type = object({
    email_link_custom_url = optional(string)
    email_link_enabled    = bool
  })
  default = null
}

variable "endpoint_restrictions" {
  description = "(Required) (Updatable) Settings that describe the set of restrictions that the system should apply to devices and trusted endpoints of a user"
  type = object({
    max_endpoint_trust_duration_in_days = number
    max_enrolled_devices                = number
    max_incorrect_attempts              = number
    max_trusted_endpoints               = number
    trusted_endpoints_enabled           = bool
  })
}

variable "fido_authenticator_enabled" {
  description = "(Optional) (Updatable) If true, indicates that the Fido Authenticator channels are enabled for authentication"
  type        = bool
  default     = null
}

variable "hide_backup_factor_enabled" {
  description = "(Optional) (Updatable) If true, indicates that 'Show backup factor(s)' button will be hidden during authentication"
  type        = bool
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "identity_store_settings" {
  description = "(Optional) (Updatable) Settings related to the use of a user's profile details from the identity store"
  type = object({
    mobile_number_enabled        = optional(bool)
    mobile_number_update_enabled = optional(bool)
  })
  default = null
}

variable "mfa_enrollment_type" {
  description = "(Required) (Updatable) Specifies if Multi-Factor Authentication enrollment is mandatory or optional for a user"
  type        = string
}

variable "notification_settings" {
  description = "(Required) (Updatable) Settings related to the Mobile App Notification channel, such as pull"
  type = object({
    pull_enabled = bool
  })
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "phone_call_enabled" {
  description = "(Optional) (Updatable) If true, indicates that the phone (PHONE_CALL) channel is enabled for authentication"
  type        = bool
  default     = null
}

variable "push_enabled" {
  description = "(Required) (Updatable) If true, indicates that the Mobile App Push Notification channel is enabled for authentication"
  type        = bool
}

variable "resource_type_schema_version" {
  description = "(Optional) (Updatable) An endpoint-specific schema version number to use in the Request. Allowed version values are Earliest Version or Latest Version as specified in each REST API endpoint description, or any sequential number inbetween. All schema attributes/body parameters are a part of version 1. After version 1, any attributes added or deprecated will be tagged with the version that they were added to or deprecated in. If no version is provided, the latest schema version is returned."
  type        = string
  default     = null
}

variable "schemas" {
  description = "(Required) (Updatable) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \\\"enterprise\\\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "security_questions_enabled" {
  description = "(Required) (Updatable) If true, indicates that Security Questions are enabled for authentication"
  type        = bool
}

variable "sms_enabled" {
  description = "(Required) (Updatable) If true, indicates that the Short Message Service (SMS) channel is enabled for authentication"
  type        = bool
}

variable "tags" {
  description = "(Optional) (Updatable) A list of tags on this resource."
  type = list(object({
    key   = string
    value = string
  }))
  default = []
}

variable "third_party_factor" {
  description = "(Optional) (Updatable) Settings related to third-party factor"
  type = object({
    duo_security = bool
  })
  default = null
}

variable "totp_enabled" {
  description = "(Required) (Updatable) If true, indicates that the Mobile App One Time Passcode channel is enabled for authentication"
  type        = bool
}

variable "totp_settings" {
  description = "(Required) (Updatable) Settings related to Time-Based One-Time Passcodes (TOTP), such as hashing algo, totp time step, passcode length, and so on"
  type = object({
    email_otp_validity_duration_in_mins = number
    email_passcode_length               = number
    hashing_algorithm                   = string
    jwt_validity_duration_in_secs       = number
    key_refresh_interval_in_days        = number
    passcode_length                     = number
    sms_otp_validity_duration_in_mins   = number
    sms_passcode_length                 = number
    time_step_in_secs                   = number
    time_step_tolerance                 = number
  })
}

variable "urnietfparamsscimschemasoracleidcsextensionfido_authentication_factor_settings" {
  description = "(Optional) (Updatable) This extension defines attributes used to manage Multi-Factor Authentication settings of fido authentication"
  type = object({
    attestation                                  = string
    authenticator_selection_attachment           = string
    authenticator_selection_require_resident_key = bool
    authenticator_selection_resident_key         = string
    authenticator_selection_user_verification    = string
    domain_validation_level                      = optional(number)
    exclude_credentials                          = bool
    public_key_types                             = list(string)
    timeout                                      = number
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionthird_party_authentication_factor_settings" {
  description = "(Optional) (Updatable) This extension defines attributes used to manage Multi-Factor Authentication settings of third party provider"
  type = object({
    duo_security_settings = optional(object({
      api_hostname           = string
      attestation_key        = optional(string)
      integration_key        = string
      secret_key             = string
      user_mapping_attribute = string
    }))
  })
  default = null
}

variable "user_enrollment_disabled_factors" {
  description = "(Optional) (Updatable) Factors for which enrollment should be blocked for End User"
  type        = list(string)
  default     = []
}

variable "yubico_otp_enabled" {
  description = "(Optional) (Updatable) If true, indicates that the Yubico OTP is enabled for authentication"
  type        = bool
  default     = null
}
