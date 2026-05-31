variable "authorization" {
  description = "(Optional) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "certificate_alias" {
  description = "(Required) Certificate alias"
  type        = string
}

variable "external_id" {
  description = "(Optional) An identifier for the Resource as defined by the Service Consumer. The externalId may simplify identification of the Resource between Service Consumer and Service Provider by allowing the Consumer to refer to the Resource with its own identifier, obviating the need to store a local mapping between the local identifier of the Resource and the identifier used by the Service Provider. Each Resource MAY include a non-empty externalId value. The value of the externalId attribute is always issued by the Service Consumer and can never be specified by the Service Provider. The Service Provider MUST always interpret the externalId as scoped to the Service Consumer's tenant."
  type        = string
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "key_store_id" {
  description = "(Optional) Key store ID"
  type        = string
  default     = null
}

variable "key_store_name" {
  description = "(Optional) Key store name"
  type        = string
  default     = null
}

variable "key_store_password" {
  description = "(Optional) Key store password"
  type        = string
  default     = null
  sensitive   = true
}

variable "map" {
  description = "(Optional) Map"
  type        = string
  default     = null
}

variable "ocid" {
  description = "(Optional) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "resource_type_schema_version" {
  description = "(Optional) An endpoint-specific schema version number to use in the Request. Allowed version values are Earliest Version or Latest Version as specified in each REST API endpoint description, or any sequential number inbetween. All schema attributes/body parameters are a part of version 1. After version 1, any attributes added or deprecated will be tagged with the version that they were added to or deprecated in. If no version is provided, the latest schema version is returned."
  type        = string
  default     = null
}

variable "schemas" {
  description = "(Required) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \\\"enterprise\\\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "tags" {
  description = "(Optional) A list of tags on this resource."
  type = list(object({
    key   = string
    value = string
  }))
  default = []
}

variable "x509base64certificate" {
  description = "(Optional) Base 64Key data attribute"
  type        = string
  default     = null
}
