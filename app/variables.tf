variable "active" {
  description = "(Optional) (Updatable) If true, this App is able to participate in runtime services, such as automatic-login, OAuth, and SAML. If false, all runtime services are disabled for this App, and only administrative operations can be performed."
  type        = bool
  default     = true
}

variable "all_url_schemes_allowed" {
  description = "(Optional) (Updatable) If true, indicates that the system should allow all URL-schemes within each value of the 'redirectUris' attribute.  Also indicates that the system should not attempt to confirm that each value of the 'redirectUris' attribute is a valid URI.  In particular, the system should not confirm that the domain component of the URI is a top-level domain and the system should not confirm that the hostname portion is a valid system that is reachable over the network."
  type        = bool
  default     = false
}

variable "allow_access_control" {
  description = "(Optional) (Updatable) If true, any managed App that is based on this template is checked for access control that is, access to this app is subject to successful authorization at SSO service, viz. app grants to start with."
  type        = bool
  default     = false
}

variable "allowed_grants" {
  description = "(Optional) (Updatable) List of grant-types that this App is allowed to use when it acts as an OAuthClient."
  type        = list(string)
  default     = []
}

variable "allowed_operations" {
  description = "(Optional) (Updatable) OPTIONAL. Required only when this App acts as an OAuthClient. Supported values are 'introspect' and 'onBehalfOfUser'. The value 'introspect' allows the client to look inside the access-token. The value 'onBehalfOfUser' overrides how the client's privileges are combined with the privileges of the Subject User. Ordinarily, authorization calculates the set of effective privileges as the intersection of the client's privileges and the user's privileges. The value 'onBehalfOf' indicates that authorization should ignore the privileges of the client and use only the user's privileges to calculate the effective privileges.xset"
  type        = list(string)
  default     = []
}

variable "allowed_scopes" {
  description = "(Optional) (Updatable) A list of scopes (exposed by this App or by other Apps) that this App is allowed to access when it acts as an OAuthClient."
  type        = list(string)
  default     = []
}

variable "attr_rendering_metadata" {
  description = "(Optional) (Updatable) Label for the attribute to be shown in the UI."
  type        = map(string)
  default     = {}
}

variable "based_on_template" {
  description = "(Required) (Updatable) Application template on which the application is based."
  type = object({
    value         = string
    well_known_id = string
  })
}

variable "client_ip_checking" {
  description = "(Optional) (Updatable) Network Perimeters checking mode"
  type        = string
  default     = null
}


variable "client_type" {
  description = "(Optional) (Updatable) Specifies the type of access that this App has when it acts as an OAuthClient."
  type        = string
  default     = null
}

variable "delegated_service_names" {
  description = "(Optional) (Updatable) Service Names allow to use Oracle Cloud Infrastructure signature for client authentication instead of client credentials"
  type        = list(string)
  default     = []
}

variable "description" {
  description = "(Optional) (Updatable) Description of the application."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) Display name of the application. Display name is intended to be user-friendly, and an administrator can change the value at any time."
  type        = string
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
  default     = "https://idcs-3bd620bcdd6f4b5abd41fc79861ae4b7.identity.oraclecloud.com:443"
}

variable "login_mechanism" {
  description = "(Optional) (Updatable) The protocol that runtime services will use to log end users in to this App automatically. If 'OIDC', then runtime services use the OpenID Connect protocol. If 'SAML', then runtime services use Security Assertion Markup Language protocol."
  type        = string
  default     = "OIDC"
}

variable "name" {
  description = "(Optional) Name of the application. Also serves as username if the application authenticates to Oracle Public Cloud infrastructure. This name may not be user-friendly and cannot be changed once an App is created."
  type        = string
  default     = null
}

variable "post_logout_redirect_uris" {
  description = "(Optional) (Updatable) Each value of this attribute is the URI of a landing page within this App. It is used only when this App, acting as an OAuthClient, initiates the logout flow and wants to be redirected back to one of its landing pages."
  type        = list(string)
  default     = []
}

variable "redirect_uris" {
  description = "(Optional) (Updatable) OPTIONAL. Each value is a URI within this App. This attribute is required when this App acts as an OAuthClient and is involved in three-legged flows (authorization-code flows)."
  type        = list(string)
  default     = []
}

variable "schemas" {
  description = "(Required) (Updatable) REQUIRED. The schemas attribute is an array of Strings which allows introspection of the supported schema version for a SCIM representation as well any schema extensions supported by that representation. Each String value must be a unique URI. This specification defines URIs for User, Group, and a standard \"enterprise\" extension. All representations of SCIM schema MUST include a non-zero value array with value(s) of the URIs supported by that representation. Duplicate values MUST NOT be included. Value order is not specified and MUST not impact behavior."
  type        = list(string)
}

variable "secondary_audiences" {
  description = "(Optional) (Updatable) A list of secondary audiences--additional URIs to be added automatically to any OAuth token that allows access to this App. Note: This attribute is used mainly for backward compatibility in certain Oracle Public Cloud Apps."
  type        = list(string)
  default     = []
}

variable "show_in_my_apps" {
  description = "(Optional) (Updatable) If true, this app will be displayed in the MyApps page of each end-user who has access to the App."
  type        = bool
  default     = false
}

variable "trust_scope" {
  description = "(Optional) (Updatable) Indicates the scope of trust for this App when acting as an OAuthClient. A value of 'Explicit' indicates that the App is allowed to access only the scopes of OAuthResources that are explicitly specified as 'allowedScopes'. A value of 'Account' indicates that the App is allowed implicitly to access any scope of any OAuthResource within the same Oracle Cloud Account. A value of 'Tags' indicates that the App is allowed to access any scope of any OAuthResource with a matching tag within the same Oracle Cloud Account. A value of 'Default' indicates that the Tenant default trust scope configured in the Tenant Settings is used."
  type        = string
  default     = null
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
