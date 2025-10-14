variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "account_id" {
  description = "(Optional) (Updatable) The Identity cloud provider service identifier, for example, the Azure Tenancy ID, AWS Account ID, or GCP Project ID."
  type        = string
  default     = null
}

variable "active" {
  description = "(Optional) (Updatable) If true, specifies that this Identity Propagation Trust is in an enabled state. The default value is false."
  type        = bool
  default     = true
}

variable "allow_impersonation" {
  description = "(Optional) (Updatable) Allow customers to define whether the resulting token should contain the authenticated user as the subject or whether the token should impersonate another Application Principal in IAM."
  type        = bool
  default     = true
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

variable "client_claim_name" {
  description = "(Optional) (Updatable) The claim name that identifies to whom the JWT/SAML token is issued. If AWS, then \"aud\" or \"client_id\". If Azure, then \"appid\". If GCP, then \"aud\"."
  type        = string
  default     = "appid"
}

variable "client_claim_values" {
  description = "(Optional) (Updatable) The value that corresponds to the client claim name used to identify to whom the token is issued."
  type        = list(string)
  default     = []
}

variable "clock_skew_seconds" {
  description = "(Optional) (Updatable) The clock skew (in secs) that's allowed for the token issue and expiry time."
  type        = number
  default     = 0
}

variable "compartment_ocid" {
  description = "(Optional) (Updatable) Oracle Cloud Infrastructure Compartment Id (ocid) in which the resource lives."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) The description of the Identity Propagation Trust."
  type        = string
  default     = "Managed by Terraform"
}

variable "impersonation_service_users" {
  description = "(Optional) (Updatable) The Impersonating Principal."
  type        = list(string)
  default     = []
}

variable "keytab" {
  description = "(Optional) (Updatable) The keytab stored in the tenancy's Vault. This is required if the identity propagation type is 'SPNEGO'."
  type = object({
    secret_ocid    = optional(string)
    secret_version = optional(string)
  })
  default = null
}

variable "oauth_clients" {
  description = "(Optional) (Updatable) The value of all the authorized OAuth Clients."
  type        = list(string)
  default     = ["oauthClients"]
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "public_certificate" {
  description = "(Optional) (Updatable) Store the public key if public key cert."
  type        = string
  default     = null
}

variable "public_key_endpoint" {
  description = "(Optional) (Updatable) The cloud provider's public key API of SAML and OIDC providers for signature validation."
  type        = string
  default     = null
}

variable "resource_type_schema_version" {
  description = "(Optional) (Updatable) An endpoint-specific schema version number to use in the Request. Allowed version values are Earliest Version or Latest Version as specified in each REST API endpoint description, or any sequential number inbetween. All schema attributes/body parameters are a part of version 1. After version 1, any attributes added or deprecated will be tagged with the version that they were added to or deprecated in. If no version is provided, the latest schema version is returned."
  type        = string
  default     = null
}

variable "schemas" {
  description = "(Required) (Updatable) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \"enterprise\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "subject_claim_name" {
  description = "(Optional) (Updatable) Used for locating the subject claim from the incoming token."
  type        = string
  default     = null
}

variable "subject_mapping_attribute" {
  description = "(Optional) (Updatable) Subject Mapping Attribute to which the value from subject claim name value would be used for identity lookup."
  type        = string
  default     = null
}

variable "subject_type" {
  description = "(Optional) (Updatable) The type of the resource against which lookup will be made in the identity domain in IAM for the incoming subject claim value."
  type        = string
  default     = "User"
}

variable "tags" {
  description = "(Optional) (Updatable) A list of tags on this resource."
  type        = list(string)
  default     = []
}

variable "type" {
  description = "(Required) (Updatable) The type of the inbound token from the Identity cloud provider."
  type        = string
}

variable "name" {
  description = "(Required) The name of the the Identity Propagation Trust."
  type        = string
}

variable "issuer" {
  description = "The issuer claim of the Identity provider."
  type        = string
}
