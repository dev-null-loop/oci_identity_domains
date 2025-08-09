variable "display_name" {
  description = "(Optional) (Updatable) Display name"
  type        = string
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "schemas" {
  description = "(Required) (Updatable) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \"enterprise\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "description" {
  description = "(Optional) (Updatable) Description of the group"
  type        = string
  default     = null
}

variable "members" {
  description = "(Optional) (Updatable) The group members. <b>Important:</b> When requesting group members, a maximum of 10,000 members can be returned in a single request. If the response contains more than 10,000 members, the request will fail. Use 'startIndex' and 'count' to return members in pages instead of in a single response, for example: #attributes=members[startIndex=1%26count=10]. This REST API is SCIM compliant."
  type = list(object({
    type  = string
    value = string
    ocid  = optional(string)
  }))
  default = []
}

variable "ocid" {
  description = "(Optional) (Updatable) The OCID of the SCIM resource that represents the User or App who created this Resource"
  type        = string
  default     = null
}

variable "non_unique_display_name" {
  description = "(Optional) (Updatable) A human readable name for the group as defined by the Service Consumer."
  type        = string
  default     = null
}

variable "resource_type_schema_version" {
  description = "(Optional) (Updatable) An endpoint-specific schema version number to use in the Request. Allowed version values are Earliest Version or Latest Version as specified in each REST API endpoint description, or any sequential number inbetween. All schema attributes/body parameters are a part of version 1. After version 1, any attributes added or deprecated will be tagged with the version that they were added to or deprecated in. If no version is provided, the latest schema version is returned."
  type        = string
  default     = null
}

variable "urnietfparamsscimschemasoracleidcsextension_oci_tags" {
  description = "(Optional) (Updatable) Oracle Cloud Infrastructure Tags."
  type = object({
    defined_tags = optional(object({
      key       = string
      namespace = string
      value     = string
    }))
    freeform_tags = optional(object({
      key   = string
      value = string
    }))
  })
  default = null
}

variable "tags" {
  description = "A list of tags on this resource."
  type = list(object({
    key   = string
    value = string
  }))
  default = []
}
