variable "activation_email_required" {
  description = "(Required) (Updatable) **SCIM++ Properties:**"
  type        = bool
}

variable "active" {
  description = "(Optional) (Updatable) A Boolean value that indicates whether the profile is enabled or not"
  type        = bool
  default     = null
}

variable "after_submit_text" {
  description = "(Optional) (Updatable) Text to be displayed on UI after doing self registration"
  type = list(object({
    default = optional(bool)
    locale  = string
    value   = string
  }))
  default = []
}

variable "allowed_email_domains" {
  description = "(Optional) (Updatable) A Multivalue String value for Email domains which are valid for this profile"
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

variable "authorization" {
  description = "(Optional) (Updatable) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "consent_text" {
  description = "(Optional) (Updatable) Consent text"
  type = list(object({
    default = optional(bool)
    locale  = string
    value   = string
  }))
  default = []
}

variable "consent_text_present" {
  description = "(Required) (Updatable) A boolean value that indicates whether the consent text is present."
  type        = bool
}

variable "default_groups" {
  description = "(Optional) (Updatable) Default groups assigned to the user"
  type = list(object({
    value = string
  }))
  default = []
}

variable "disallowed_email_domains" {
  description = "(Optional) (Updatable) A Multivalue String Value for Email domains to be handled as exceptions"
  type        = list(string)
  default     = []
}

variable "display_name" {
  description = "(Required) (Updatable) Registration page name"
  type = list(object({
    default = optional(bool)
    locale  = string
    value   = string
  }))
}

variable "email_template" {
  description = "(Required) (Updatable) Email template"
  type = object({
    value = string
  })
}

variable "external_id" {
  description = "(Optional) (Updatable) An identifier for the Resource as defined by the Service Consumer. The externalId may simplify identification of the Resource between Service Consumer and Service Provider by allowing the Consumer to refer to the Resource with its own identifier, obviating the need to store a local mapping between the local identifier of the Resource and the identifier used by the Service Provider. Each Resource MAY include a non-empty externalId value. The value of the externalId attribute is always issued by the Service Consumer and can never be specified by the Service Provider. The Service Provider MUST always interpret the externalId as scoped to the Service Consumer's tenant."
  type        = string
  default     = null
}

variable "footer_logo" {
  description = "(Optional) (Updatable) References to footer logo"
  type        = string
  default     = null
}

variable "footer_text" {
  description = "(Optional) (Updatable) Footer text"
  type = list(object({
    default = optional(bool)
    locale  = string
    value   = string
  }))
  default = []
}

variable "header_logo" {
  description = "(Optional) (Updatable) Reference to header logo"
  type        = string
  default     = null
}

variable "header_text" {
  description = "(Optional) (Updatable) Header text"
  type = list(object({
    default = optional(bool)
    locale  = string
    value   = string
  }))
  default = []
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "name" {
  description = "(Required) (Updatable) Name of the profile"
  type        = string
}

variable "number_of_days_redirect_url_is_valid" {
  description = "(Required) (Updatable) Number of days redirect URL is valid"
  type        = number
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "redirect_url" {
  description = "(Required) (Updatable) This URL will be replaced in email notification sent to user. When activation email required is set to true, user is created in \\\"pending verification\\\" state, upon clicking this link user will be able to activate himself. When activation email required is set to false, user is created in \\\"verified\\\" state, this link will be used to verify user's email."
  type        = string
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

variable "show_on_login_page" {
  description = "(Required) (Updatable) A Boolean value that indicates whether the profile should be displayed on login page"
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

variable "user_attributes" {
  description = "(Optional) (Updatable) **SCIM++ Properties:**"
  type = list(object({
    fully_qualified_attribute_name = optional(string)
    seq_number                     = number
    value                          = string
  }))
  default = []
}
