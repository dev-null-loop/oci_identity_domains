variable "assertion_attribute" {
  description = "(Optional) (Updatable) Assertion attribute name."
  type        = string
  default     = null
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

variable "authn_request_binding" {
  description = "(Optional) (Updatable) HTTP binding to use for authentication requests."
  type        = string
  default     = null
}

variable "authorization" {
  description = "(Optional) (Updatable) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "correlation_policy" {
  description = "(Optional) (Updatable) Correlation policy"
  type = object({
    display = optional(string)
    type    = string
    value   = string
  })
  default = null
}

variable "description" {
  description = "(Optional) (Updatable) Description"
  type        = string
  default     = null
}

variable "enabled" {
  description = "(Required) (Updatable) Set to true to indicate Partner enabled."
  type        = bool
}

variable "encryption_certificate" {
  description = "(Optional) (Updatable) Encryption certificate"
  type        = string
  default     = null
}

variable "external_id" {
  description = "(Optional) (Updatable) An identifier for the Resource as defined by the Service Consumer. The externalId may simplify identification of the Resource between Service Consumer and Service Provider by allowing the Consumer to refer to the Resource with its own identifier, obviating the need to store a local mapping between the local identifier of the Resource and the identifier used by the Service Provider. Each Resource MAY include a non-empty externalId value. The value of the externalId attribute is always issued by the Service Consumer and can never be specified by the Service Provider. The Service Provider MUST always interpret the externalId as scoped to the Service Consumer's tenant."
  type        = string
  default     = null
}

variable "icon_url" {
  description = "(Optional) (Updatable) Identity Provider Icon URL."
  type        = string
  default     = null
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "idp_sso_url" {
  description = "(Optional) (Updatable) Identity Provider SSO URL"
  type        = string
  default     = null
}

variable "include_signing_cert_in_signature" {
  description = "(Optional) (Updatable) Set to true to include the signing certificate in the signature."
  type        = bool
  default     = null
}

variable "jit_user_prov_assigned_groups" {
  description = "(Optional) (Updatable) Refers to every group of which a JIT-provisioned User should be a member.  Just-in-Time user-provisioning applies this static list when jitUserProvGroupStaticListEnabled:true."
  type = list(object({
    value = string
  }))
  default = []
}

variable "jit_user_prov_attribute_update_enabled" {
  description = "(Optional) (Updatable) Set to true to indicate JIT User Creation is enabled"
  type        = bool
  default     = null
}

variable "jit_user_prov_attributes" {
  description = "(Optional) (Updatable) Assertion To User Mapping"
  type = object({
    value = string
  })
  default = null
}

variable "jit_user_prov_create_user_enabled" {
  description = "(Optional) (Updatable) Set to true to indicate JIT User Creation is enabled"
  type        = bool
  default     = null
}

variable "jit_user_prov_enabled" {
  description = "(Optional) (Updatable) Set to true to indicate JIT User Provisioning is enabled"
  type        = bool
  default     = null
}

variable "jit_user_prov_group_assertion_attribute_enabled" {
  description = "(Optional) (Updatable) Set to true to indicate JIT User Provisioning Groups should be assigned based on assertion attribute"
  type        = bool
  default     = null
}

variable "jit_user_prov_group_assignment_method" {
  description = "(Optional) (Updatable) The default value is 'Overwrite', which tells Just-In-Time user-provisioning to replace any current group-assignments for a User with those assigned by assertions and/or those assigned statically. Specify 'Merge' if you want Just-In-Time user-provisioning to combine its group-assignments with those the user already has."
  type        = string
  default     = null
}

variable "jit_user_prov_group_mapping_mode" {
  description = "(Optional) (Updatable) Property to indicate the mode of group mapping"
  type        = string
  default     = null
}

variable "jit_user_prov_group_mappings" {
  description = "(Optional) (Updatable) The list of mappings between the Identity Domain Group and the IDP group."
  type = list(object({
    idp_group = string
    value     = string
  }))
  default = []
}

variable "jit_user_prov_group_saml_attribute_name" {
  description = "(Optional) (Updatable) Name of the assertion attribute containing the users groups"
  type        = string
  default     = null
}

variable "jit_user_prov_group_static_list_enabled" {
  description = "(Optional) (Updatable) Set to true to indicate JIT User Provisioning Groups should be assigned from a static list"
  type        = bool
  default     = null
}

variable "jit_user_prov_ignore_error_on_absent_groups" {
  description = "(Optional) (Updatable) Set to true to indicate ignoring absence of group while provisioning"
  type        = bool
  default     = null
}

variable "logout_binding" {
  description = "(Optional) (Updatable) HTTP binding to use for logout."
  type        = string
  default     = null
}

variable "logout_enabled" {
  description = "(Optional) (Updatable) Set to true to enable logout."
  type        = bool
  default     = null
}

variable "logout_request_url" {
  description = "(Optional) (Updatable) Logout request URL"
  type        = string
  default     = null
}

variable "logout_response_url" {
  description = "(Optional) (Updatable) Logout response URL"
  type        = string
  default     = null
}

variable "metadata" {
  description = "(Optional) (Updatable) Metadata"
  type        = string
  default     = null
}

variable "name_id_format" {
  description = "(Optional) (Updatable) Default authentication request name ID format."
  type        = string
  default     = null
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "partner_name" {
  description = "(Required) (Updatable) Unique name of the trusted Identity Provider."
  type        = string
}

variable "partner_provider_id" {
  description = "(Optional) (Updatable) Provider ID"
  type        = string
  default     = null
}

variable "requested_authentication_context" {
  description = "(Optional) (Updatable) SAML SP authentication type."
  type        = list(string)
  default     = []
}

variable "require_force_authn" {
  description = "(Optional) (Updatable) This SP requires requests SAML IdP to enforce re-authentication."
  type        = bool
  default     = null
}

variable "requires_encrypted_assertion" {
  description = "(Optional) (Updatable) SAML SP must accept encrypted assertion only."
  type        = bool
  default     = null
}

variable "resource_type_schema_version" {
  description = "(Optional) (Updatable) An endpoint-specific schema version number to use in the Request. Allowed version values are Earliest Version or Latest Version as specified in each REST API endpoint description, or any sequential number inbetween. All schema attributes/body parameters are a part of version 1. After version 1, any attributes added or deprecated will be tagged with the version that they were added to or deprecated in. If no version is provided, the latest schema version is returned."
  type        = string
  default     = null
}

variable "saml_ho_krequired" {
  description = "(Optional) (Updatable) SAML SP HoK Enabled."
  type        = bool
  default     = null
}

variable "schemas" {
  description = "(Required) (Updatable) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \\\"enterprise\\\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "service_instance_identifier" {
  description = "(Optional) (Updatable) The serviceInstanceIdentifier of the App that hosts this IdP. This value will match the opcServiceInstanceGUID of any service-instance that the IdP represents."
  type        = string
  default     = null
}

variable "shown_on_login_page" {
  description = "(Optional) (Updatable) Set to true to indicate whether to show IdP in login page or not."
  type        = bool
  default     = null
}

variable "signature_hash_algorithm" {
  description = "(Optional) (Updatable) Signature hash algorithm."
  type        = string
  default     = null
}

variable "signing_certificate" {
  description = "(Optional) (Updatable) Signing certificate"
  type        = string
  default     = null
}

variable "succinct_id" {
  description = "(Optional) (Updatable) Succinct ID"
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

variable "type" {
  description = "(Optional) (Updatable) Identity Provider Type"
  type        = string
  default     = null
}

variable "urnietfparamsscimschemasoracleidcsextensionsocial_identity_provider" {
  description = "(Optional) (Updatable) Social Identity Provider Extension Schema"
  type = object({
    access_token_url             = optional(string)
    account_linking_enabled      = bool
    admin_scope                  = optional(list(string))
    apple_dev_id                 = optional(string)
    apple_key_id                 = optional(string)
    authz_url                    = optional(string)
    auto_redirect_enabled        = optional(bool)
    client_credential_in_payload = optional(bool)
    clock_skew_in_seconds        = optional(number)
    consumer_key                 = string
    consumer_secret              = string
    discovery_url                = optional(string)
    id_attribute                 = optional(string)
    jit_prov_assigned_groups = optional(list(object({
      display = optional(string)
      value   = string
    })))
    jit_prov_group_static_list_enabled = optional(bool)
    profile_url                        = optional(string)
    redirect_url                       = optional(string)
    registration_enabled               = bool
    scope                              = optional(list(string))
    service_provider_name              = string
    social_jit_provisioning_enabled    = optional(bool)
    status                             = optional(string)
  })
  default = null
}

variable "urnietfparamsscimschemasoracleidcsextensionx509identity_provider" {
  description = "(Optional) (Updatable) X509 Identity Provider Extension Schema"
  type = object({
    cert_match_attribute               = string
    crl_check_on_ocsp_failure_enabled  = optional(bool)
    crl_enabled                        = optional(bool)
    crl_location                       = optional(string)
    crl_reload_duration                = optional(number)
    eku_validation_enabled             = optional(bool)
    eku_values                         = optional(list(string))
    ocsp_allow_unknown_response_status = optional(bool)
    ocsp_enable_signed_response        = optional(bool)
    ocsp_enabled                       = optional(bool)
    ocsp_responder_url                 = optional(string)
    ocsp_revalidate_time               = optional(number)
    ocsp_server_name                   = optional(string)
    ocsp_trust_cert_chain              = optional(list(string))
    other_cert_match_attribute         = optional(string)
    signing_certificate_chain          = list(string)
    user_match_attribute               = string
  })
  default = null
}

variable "user_mapping_method" {
  description = "(Optional) (Updatable) User mapping method."
  type        = string
  default     = null
}

variable "user_mapping_store_attribute" {
  description = "(Optional) (Updatable) This property specifies the userstore attribute value that must match the incoming assertion attribute value or the incoming nameid attribute value in order to identify the user during SSO.<br>You can construct the userMappingStoreAttribute value by specifying attributes from the Oracle Identity Cloud Service Core Users schema. For examples of how to construct the userMappingStoreAttribute value, see the <b>Example of a Request Body</b> section of the Examples tab for the <a href='./op-admin-v1-identityproviders-post.html'>POST</a> and <a href='./op-admin-v1-identityproviders-id-put.html'>PUT</a> methods of the /IdentityProviders endpoint."
  type        = string
  default     = null
}
