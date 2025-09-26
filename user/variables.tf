variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "user_name" {
  description = "(Required) (Updatable) User name"
  type        = string
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

variable "schemas" {
  description = "(Required) (Updatable) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \"enterprise\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "emails" {
  description = "(Optional) (Updatable) A complex attribute representing emails"
  type = list(object({
    type      = string
    value     = string
    primary   = optional(string)
    secondary = optional(string)
    verified  = optional(string)
  }))
  default = []
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
  default = {}
}

variable "urnietfparamsscimschemasoracleidcsextension_oci_tags" {
  type = list(object({
    key       = string
    namespace = string
    value     = string
  }))
  default = []
}

variable "urnietfparamsscimschemasoracleidcsextensioncapabilities_user" {
  type = object({
    can_use_api_keys                 = bool
    can_use_auth_tokens              = bool
    can_use_console_password         = bool
    can_use_customer_secret_keys     = bool
    can_use_db_credentials           = bool
    can_use_oauth2client_credentials = bool
    can_use_smtp_credentials         = bool
  })
  default = null
}
