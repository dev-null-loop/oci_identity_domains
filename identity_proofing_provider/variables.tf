variable "identity_proofing_provider_provider" {
  description = "(Required) (Updatable) The Identity Proofing Provider."
  type        = string
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

variable "claim_mapping" {
  description = "(Required) (Updatable) Configure the verification claims and IAM Domain user attribute mapping."
  type = list(object({
    attr_match       = string
    verifiable_claim = string
  }))
}

variable "configuration" {
  description = "(Required) (Updatable) Configure the verification provider."
  type = list(object({
    name  = string
    value = string
  }))
}

variable "description" {
  description = "(Optional) (Updatable) Description field to add comments and additional information about the Identity Proofing Provider."
  type        = string
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "name" {
  description = "(Required) (Updatable) Name of the Identity Proofing Provider."
  type        = string
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier (OCID) for the SCIM Resource."
  type        = string
  default     = null
}

variable "resource_type_schema_version" {
  description = "(Optional) (Updatable) An endpoint-specific schema version number to use in the Request. Allowed version values are Earliest Version or Latest Version as specified in each REST API endpoint description, or any sequential number inbetween. All schema attributes/body parameters are a part of version 1. After version 1, any attributes added or deprecated will be tagged with the version that they were added to or deprecated in. If no version is provided, the latest schema version is returned."
  type        = string
  default     = null
}

variable "runtime_data" {
  description = "(Optional) (Updatable) Identity Proofing runtime custom data."
  type = list(object({
    attr_name  = string
    attr_value = string
  }))
  default = []
}

variable "schemas" {
  description = "(Required) (Updatable) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \\\"enterprise\\\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "status" {
  description = "(Optional) (Updatable) Status of the Identity Proofing Provider."
  type        = string
  default     = null
}
