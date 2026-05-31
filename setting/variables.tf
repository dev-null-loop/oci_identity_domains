variable "account_always_trust_scope" {
  description = "(Optional) (Updatable) Indicates whether all the Apps in this customer tenancy should trust each other. A value of true overrides the 'defaultTrustScope' attribute here in Settings, as well as any App-specific 'trustScope' attribute, to force in effect 'trustScope=Account' for every App in this customer tenancy."
  type        = bool
  default     = null
}

variable "allowed_domains" {
  description = "(Optional) (Updatable) One or more email domains allowed in a user's email field. If unassigned, any domain is allowed."
  type        = list(string)
  default     = []
}

variable "allowed_forgot_password_flow_return_urls" {
  description = "(Optional) (Updatable) If specified, indicates the set of Urls which can be returned to after successful forgot password flow"
  type        = list(string)
  default     = []
  sensitive   = true
}

variable "allowed_notification_redirect_urls" {
  description = "(Optional) (Updatable) If specified, indicates the set of allowed notification redirect Urls which can be specified as the value of \\\"notificationRedirectUrl\\\" in the POST .../admin/v1/MePasswordResetRequestor request payload, which will then be included in the reset password email notification sent to a user as part of the forgot password / password reset flow."
  type        = list(string)
  default     = []
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

variable "audit_event_retention_period" {
  description = "(Optional) (Updatable) Audit Event retention period. If set, overrides default of 30 days after which Audit Events will be purged"
  type        = number
  default     = null
}

variable "authorization" {
  description = "(Optional) (Updatable) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "certificate_validation" {
  description = "(Optional) (Updatable) Certificate Validation Config"
  type = object({
    crl_check_on_ocsp_failure_enabled     = optional(bool)
    crl_enabled                           = optional(bool)
    crl_location                          = optional(string)
    crl_refresh_interval                  = optional(number)
    ocsp_enabled                          = optional(bool)
    ocsp_responder_url                    = optional(string)
    ocsp_settings_responder_url_preferred = optional(bool)
    ocsp_signing_certificate_alias        = optional(string)
    ocsp_timeout_duration                 = optional(number)
    ocsp_unknown_response_status_allowed  = optional(bool)
  })
  default = null
}

variable "cloud_gate_cors_settings" {
  description = "(Optional) (Updatable) A complex attribute that specifies the Cloud Gate cross origin resource sharing settings."
  type = object({
    cloud_gate_cors_allow_null_origin = optional(bool)
    cloud_gate_cors_allowed_origins   = optional(list(string))
    cloud_gate_cors_enabled           = optional(bool)
    cloud_gate_cors_exposed_headers   = optional(list(string))
    cloud_gate_cors_max_age           = optional(number)
  })
  default = null
}

variable "cloud_migration_custom_url" {
  description = "(Optional) (Updatable) If specified, indicates the custom SIM Migrator Url which can be used while SIM to Oracle Identity Cloud Service CloudAccount Migration."
  type        = string
  default     = null
}

variable "cloud_migration_url_enabled" {
  description = "(Optional) (Updatable) CloudAccountMigration: Enable Custom SIM Migrator Url."
  type        = bool
  default     = null
}

variable "company_names" {
  description = "(Optional) (Updatable) Name of the company in different locales"
  type = list(object({
    locale = string
    value  = string
  }))
  default = []
}

variable "contact_emails" {
  description = "(Optional) (Updatable) Contact emails used to notify tenants. Can be one or more user or group alias emails."
  type        = list(string)
  default     = []
}

variable "csr_access" {
  description = "(Required) (Updatable) This value indicates whether Customer Service Representatives can login and have readOnly or readWrite access.  A value of 'none' means CSR cannot login to the services."
  type        = string
}

variable "custom_branding" {
  description = "(Optional) (Updatable) Indicates if the branding is default or custom"
  type        = bool
  default     = null
}

variable "custom_css_location" {
  description = "(Optional) (Updatable) Storage URL location where the sanitized custom css is located"
  type        = string
  default     = null
}

variable "custom_html_location" {
  description = "(Optional) (Updatable) Storage URL location where the sanitized custom html is located"
  type        = string
  default     = null
}

variable "custom_translation" {
  description = "(Optional) (Updatable) Custom translations (JSON String)"
  type        = string
  default     = null
}

variable "default_trust_scope" {
  description = "(Optional) (Updatable) **Deprecated Since: 18.3.6**"
  type        = string
  default     = null
}

variable "diagnostic_level" {
  description = "(Optional) (Updatable) The level of diagnostic logging that is currently in effect. A level of 0 (zero) indicates that diagnostic logging is disabled. A level of 1 (one) indicates that diagnostic logging is enabled."
  type        = number
  default     = null
}

variable "diagnostic_record_for_search_identifies_returned_resources" {
  description = "(Optional) (Updatable) Controls whether DiagnosticRecords for external search-operations (against SCIM resource-types in the Admin service) identify returned resources.  If true, indicates that for each successful external search-operation at least one DiagnosticRecord will include at least one identifier for each matching resource that is returned in that search-response.  If false, no DiagnosticRecord should be expected to identify returned resources for a search-operation.  The default value is false."
  type        = bool
  default     = null
}

variable "enable_terms_of_use" {
  description = "(Optional) (Updatable) Indicates if Terms of Use is enabled in UI"
  type        = bool
  default     = null
}

variable "external_id" {
  description = "(Optional) (Updatable) An identifier for the Resource as defined by the Service Consumer. The externalId may simplify identification of the Resource between Service Consumer and Service Provider by allowing the Consumer to refer to the Resource with its own identifier, obviating the need to store a local mapping between the local identifier of the Resource and the identifier used by the Service Provider. Each Resource MAY include a non-empty externalId value. The value of the externalId attribute is always issued by the Service Consumer and can never be specified by the Service Provider. The Service Provider MUST always interpret the externalId as scoped to the Service Consumer's tenant."
  type        = string
  default     = null
}

variable "iam_upst_session_expiry" {
  description = "(Optional) (Updatable) Maximum duration for IAM User Principal Session Token expiry"
  type        = number
  default     = null
}

variable "id" {
  description = "(Optional) (Updatable) Unique identifier for the SCIM Resource as defined by the Service Provider. Each representation of the Resource MUST include a non-empty id value. This identifier MUST be unique across the Service Provider's entire set of Resources. It MUST be a stable, non-reassignable identifier that does not change when the same Resource is returned in subsequent requests. The value of the id attribute is always issued by the Service Provider and MUST never be specified by the Service Consumer. bulkId: is a reserved keyword and MUST NOT be used in the unique identifier."
  type        = string
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "images" {
  description = "(Optional) (Updatable) References to various images"
  type = list(object({
    display = optional(string)
    type    = string
    value   = string
  }))
  default = []
}

variable "is_hosted_page" {
  description = "(Optional) (Updatable) Indicates if 'hosted' option was selected"
  type        = bool
  default     = null
}

variable "issuer" {
  description = "(Optional) (Updatable) Tenant issuer."
  type        = string
  default     = null
}

variable "locale" {
  description = "(Optional) (Updatable) Default location for purposes of localizing items such as currency, date and time format, numerical representations, and so on."
  type        = string
  default     = null
}

variable "login_texts" {
  description = "(Optional) (Updatable) Login text in different locales"
  type = list(object({
    locale = string
    value  = string
  }))
  default = []
}

variable "max_no_of_app_cmva_to_return" {
  description = "(Optional) (Updatable) Limit the maximum return of CMVA for an App"
  type        = number
  default     = null
}

variable "max_no_of_app_role_members_to_return" {
  description = "(Optional) (Updatable) Limit the maximum return of members for an AppRole"
  type        = number
  default     = null
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "preferred_language" {
  description = "(Optional) (Updatable) Preferred written or spoken language used for localized user interfaces"
  type        = string
  default     = null
}

variable "prev_issuer" {
  description = "(Optional) (Updatable) Previous Tenant issuer. This is an Oracle Identity Cloud Service internal attribute which is not meant to be directly modified by ID Admin. Even if the request body (Settings) contains this attribute, the actual value will be set according to the Oracle Identity Cloud Service internal logic rather than solely based on the value provided in the request payload."
  type        = string
  default     = null
}

variable "privacy_policy_url" {
  description = "(Optional) (Updatable) Privacy Policy URL"
  type        = string
  default     = null
}

variable "purge_configs" {
  description = "(Optional) (Updatable) Purge Configs for different Resource Types"
  type = list(object({
    resource_name    = string
    retention_period = number
  }))
  default = []
}

variable "re_auth_factor" {
  description = "(Optional) (Updatable) If reAuthWhenChangingMyAuthenticationFactors is true (default), this attribute specifies which re-authentication factor to use. Allowed value is \\\"password\\\"."
  type        = list(string)
  default     = []
}

variable "re_auth_when_changing_my_authentication_factors" {
  description = "(Optional) (Updatable) Specifies whether re-authentication is required or not when a user changes one of their security factors such as password or email. Default is true to ensure more secure behavior."
  type        = bool
  default     = null
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

variable "service_admin_cannot_list_other_users" {
  description = "(Optional) (Updatable) By default, a service admin can list all users in stripe. If true, a service admin cannot list other users."
  type        = bool
  default     = null
}

variable "setting_id" {
  description = "(Required) ID of the resource"
  type        = string
}

variable "signing_cert_public_access" {
  description = "(Optional) (Updatable) Indicates if access on SigningCert is allowed to public or not"
  type        = bool
  default     = null
}

variable "sub_mapping_attr" {
  description = "(Optional) (Updatable) **Added In:** 20.1.3"
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) (Updatable) A list of tags on this resource."
  type = list(object({
    key   = string
    value = string
  }))
  default = []
}

variable "tenant_custom_claims" {
  description = "(Optional) (Updatable) Custom claims associated with the specific tenant"
  type = list(object({
    all_scopes = bool
    expression = bool
    mode       = string
    name       = string
    scopes     = optional(list(string))
    token_type = string
    value      = string
  }))
  default = []
}

variable "terms_of_use_url" {
  description = "(Optional) (Updatable) Terms of Use URL"
  type        = string
  default     = null
}

variable "timezone" {
  description = "(Optional) (Updatable) User's timezone"
  type        = string
  default     = null
}
