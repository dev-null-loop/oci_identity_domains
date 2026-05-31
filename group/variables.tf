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

variable "display_name" {
  description = "(Required) (Updatable) The Group display name."
  type        = string
}

variable "external_id" {
  description = "(Optional) (Updatable) An identifier for the Resource as defined by the Service Consumer. The externalId may simplify identification of the Resource between Service Consumer and Service Provider by allowing the Consumer to refer to the Resource with its own identifier, obviating the need to store a local mapping between the local identifier of the Resource and the identifier used by the Service Provider. Each Resource MAY include a non-empty externalId value. The value of the externalId attribute is always issued by the Service Consumer and can never be specified by the Service Provider. The Service Provider MUST always interpret the externalId as scoped to the Service Consumer's tenant."
  type        = string
  default     = null
}

variable "force_delete" {
  description = "(Optional) (Updatable) To force delete the resource and all its references (if any). Need to `terraform apply` first before `terraform destroy`."
  type        = bool
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "members" {
  description = "(Optional) (Updatable) The group members. <b>Important:</b> When requesting group members, a maximum of 10,000 members can be returned in a single request. If the response contains more than 10,000 members, the request will fail. Use 'startIndex' and 'count' to return members in pages instead of in a single response, for example: #attributes=members[startIndex=1%26count=10]. This REST API is SCIM compliant."
  type = list(object({
    ocid  = optional(string)
    type  = string
    value = string
  }))
  default = []
}

variable "non_unique_display_name" {
  description = "(Optional) (Updatable) A human readable name for the group as defined by the Service Consumer."
  type        = string
  default     = null
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
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

variable "tags" {
  description = "(Optional) (Updatable) A list of tags on this resource."
  type = list(object({
    key   = string
    value = string
  }))
  default = []
}

variable "urnietfparamsscimschemasoracleidcsextension_oci_tags" {
  description = "(Optional) (Updatable) Oracle Cloud Infrastructure Tags."
  type = object({
    defined_tags = optional(list(object({
      key       = string
      namespace = string
      value     = string
    })))
    freeform_tags = optional(list(object({
      key   = string
      value = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensiondynamic_group" {
  description = "(Optional) (Updatable) Dynamic Group"
  type = object({
    membership_rule = optional(string)
    membership_type = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensiongroup_group" {
  description = "(Optional) (Updatable) Oracle Identity Cloud Service Group"
  type = object({
    creation_mechanism = optional(string)
    description        = optional(string)
    owners = optional(list(object({
      type  = string
      value = string
    })))
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionposix_group" {
  description = "(Optional) (Updatable) POSIX Group extension"
  type = object({
    gid_number = optional(number)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionrequestable_group" {
  description = "(Optional) (Updatable) Requestable Group"
  type = object({
    requestable = optional(bool)
  })
  default = null
}
