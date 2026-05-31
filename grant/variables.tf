variable "app" {
  description = "(Optional) Application that is being granted. Each Grant must grant either an App or an App-Entitlement-Collection."
  type = object({
    value = string
  })
  default = null
}

variable "app_entitlement_collection" {
  description = "(Optional) Application-Entitlement-Collection that is being granted. Each Grant must grant either an App or an App-Entitlement-Collection."
  type = object({
    value = string
  })
  default = null
}

variable "attribute_sets" {
  description = "(Optional) A multi-valued list of strings indicating the return type of attribute definition. The specified set of attributes can be fetched by the return type of the attribute. One or more values can be given together to fetch more than one group of attributes. If 'attributes' query parameter is also available, union of the two is fetched. Valid values - all, always, never, request, default. Values are case-insensitive."
  type        = list(string)
  default     = []
}

variable "attributes" {
  description = "(Optional) A comma-delimited string that specifies the names of resource attributes that should be returned in the response. By default, a response that contains resource attributes contains only attributes that are defined in the schema for that resource type as returned=always or returned=default. An attribute that is defined as returned=request is returned in a response only if the request specifies its name in the value of this query parameter. If a request specifies this query parameter, the response contains the attributes that this query parameter specifies, as well as any attribute that is defined as returned=always."
  type        = string
  default     = null
}

variable "authorization" {
  description = "(Optional) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "entitlement" {
  description = "(Optional) The entitlement or privilege that is being granted"
  type = object({
    attribute_name  = string
    attribute_value = string
  })
  default = null
}

variable "grant_mechanism" {
  description = "(Required) Each value of grantMechanism indicates how (or by what component) some App (or App-Entitlement) was granted. A customer or the UI should use only grantMechanism values that start with 'ADMINISTRATOR':"
  type        = string
}

variable "granted_attribute_values_json" {
  description = "(Optional) Store granted attribute-values as a string in Javascript Object Notation (JSON) format."
  type        = string
  default     = null
}

variable "grantee" {
  description = "(Required) Grantee beneficiary. The grantee may be a User, Group, App or DynamicResourceGroup."
  type = object({
    type  = string
    value = string
  })
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
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
