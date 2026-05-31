variable "access_token_url" {
  description = "(Optional) (Updatable) Social IDP Access token URL"
  type        = string
  default     = null
}

variable "account_linking_enabled" {
  description = "(Required) (Updatable) Whether account linking is enabled"
  type        = bool
}

variable "admin_scope" {
  description = "(Optional) (Updatable) Admin scope to request"
  type        = list(string)
  default     = []
}

variable "apple_dev_id" {
  description = "(Optional) (Updatable) Apple Developer ID"
  type        = string
  default     = null
}

variable "apple_key_id" {
  description = "(Optional) (Updatable) Apple Private Key ID"
  type        = string
  default     = null
}

variable "authorization" {
  description = "(Optional) (Updatable) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "authz_url" {
  description = "(Optional) (Updatable) Social IDP Authorization URL"
  type        = string
  default     = null
}

variable "auto_redirect_enabled" {
  description = "(Optional) (Updatable) Whether social auto redirect is enabled. The IDP policy should be configured with only one Social IDP, and without username/password selected."
  type        = bool
  default     = null
}

variable "client_credential_in_payload" {
  description = "(Optional) (Updatable) Whether the client credential is contained in payload"
  type        = bool
  default     = null
}

variable "clock_skew_in_seconds" {
  description = "(Optional) (Updatable) Social IDP allowed clock skew time"
  type        = number
  default     = null
}

variable "consumer_key" {
  description = "(Required) (Updatable) Social IDP Client Application Client ID"
  type        = string
}

variable "consumer_secret" {
  description = "(Required) (Updatable) Social IDP Client Application Client Secret"
  type        = string
}

variable "description" {
  description = "(Optional) (Updatable) Social IDP description"
  type        = string
  default     = null
}

variable "discovery_url" {
  description = "(Optional) (Updatable) Discovery URL"
  type        = string
  default     = null
}

variable "enabled" {
  description = "(Required) (Updatable) Whether the IDP is enabled or not"
  type        = bool
}

variable "icon_url" {
  description = "(Optional) (Updatable) ICON URL for social idp"
  type        = string
  default     = null
}

variable "id_attribute" {
  description = "(Optional) Id attribute used for account linking"
  type        = string
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "jit_prov_assigned_groups" {
  description = "(Optional) (Updatable) Lists the groups each social JIT-provisioned user is a member. Just-in-Time user-provisioning applies this static list when jitProvGroupStaticListEnabled:true."
  type = list(object({
    value = string
  }))
  default = []
}

variable "jit_prov_group_static_list_enabled" {
  description = "(Optional) (Updatable) Set to true to indicate Social JIT User Provisioning Groups should be assigned from a static list"
  type        = bool
  default     = null
}

variable "name" {
  description = "(Required) (Updatable) Social provider name"
  type        = string
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "profile_url" {
  description = "(Optional) (Updatable) Social IDP User profile URL"
  type        = string
  default     = null
}

variable "redirect_url" {
  description = "(Optional) (Updatable) redirect URL for social idp"
  type        = string
  default     = null
}

variable "refresh_token_url" {
  description = "(Optional) (Updatable) Social IDP Refresh token URL"
  type        = string
  default     = null
}

variable "registration_enabled" {
  description = "(Required) (Updatable) Whether registration is enabled"
  type        = bool
}

variable "relay_idp_param_mappings" {
  description = "(Optional) (Updatable) Relay Param variable for Social IDP"
  type = list(object({
    relay_param_key   = string
    relay_param_value = optional(string)
  }))
  default = []
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

variable "scope" {
  description = "(Optional) (Updatable) Scope to request"
  type        = list(string)
  default     = []
}

variable "service_provider_name" {
  description = "(Required) Service Provider Name"
  type        = string
}

variable "show_on_login" {
  description = "(Required) (Updatable) Whether show on login"
  type        = bool
}

variable "social_jit_provisioning_enabled" {
  description = "(Optional) (Updatable) Whether Social JIT Provisioning is enabled"
  type        = bool
  default     = null
}

variable "status" {
  description = "(Optional) (Updatable) Status"
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
