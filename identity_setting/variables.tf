variable "posix_gid" {
  description = "(Optional) (Updatable) A list of Posix Gid settings."
  type = object({
    manual_assignment_ends_at     = optional(number)
    manual_assignment_starts_from = optional(number)
  })
  default = null
}

variable "posix_uid" {
  description = "(Optional) (Updatable) A list of Posix Uid settings."
  type = object({
    manual_assignment_ends_at     = optional(number)
    manual_assignment_starts_from = optional(number)
  })
  default = null
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

variable "emit_locked_message_when_user_is_locked" {
  description = "(Optional) (Updatable) Indicates whether to show the 'user-is-locked' message during authentication if the user is already locked. The default value is false, which tells the system to show a generic 'authentication-failure' message. This is the most secure behavior. If the option is set to true, the system shows a more detailed 'error-message' that says the user is locked. This is more helpful but is less secure, for example, because the difference in error-messages could be used to determine which usernames exist and which do not."
  type        = bool
  default     = null
}

variable "external_id" {
  description = "(Optional) (Updatable) An identifier for the Resource as defined by the Service Consumer. The externalId may simplify identification of the Resource between Service Consumer and Service Provider by allowing the Consumer to refer to the Resource with its own identifier, obviating the need to store a local mapping between the local identifier of the Resource and the identifier used by the Service Provider. Each Resource MAY include a non-empty externalId value. The value of the externalId attribute is always issued by the Service Consumer and can never be specified by the Service Provider. The Service Provider MUST always interpret the externalId as scoped to the Service Consumer's tenant."
  type        = string
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "identity_setting_id" {
  description = "(Required) ID of the resource"
  type        = string
}

variable "my_profile" {
  description = "(Optional) (Updatable) Whether to allow users to update their own profile."
  type = object({
    allow_end_users_to_change_their_password          = optional(bool)
    allow_end_users_to_link_their_support_account     = optional(bool)
    allow_end_users_to_manage_their_capabilities      = optional(bool)
    allow_end_users_to_update_their_security_settings = optional(bool)
  })
  default = null
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "primary_email_required" {
  description = "(Optional) (Updatable) Indicates whether the primary email is required."
  type        = bool
  default     = null
}

variable "resource_type_schema_version" {
  description = "(Optional) (Updatable) An endpoint-specific schema version number to use in the Request. Allowed version values are Earliest Version or Latest Version as specified in each REST API endpoint description, or any sequential number inbetween. All schema attributes/body parameters are a part of version 1. After version 1, any attributes added or deprecated will be tagged with the version that they were added to or deprecated in. If no version is provided, the latest schema version is returned."
  type        = string
  default     = null
}

variable "return_inactive_over_locked_message" {
  description = "(Optional) (Updatable) **Added In:** 2302092332"
  type        = bool
  default     = null
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

variable "tokens" {
  description = "(Optional) (Updatable) A list of tokens and their expiry length."
  type = list(object({
    expires_after = optional(number)
    type          = string
  }))
  default = []
}

variable "user_allowed_to_set_recovery_email" {
  description = "(Optional) (Updatable) Indicates whether a user is allowed to change their own recovery email."
  type        = bool
  default     = null
}
