variable "allowed_chars" {
  description = "(Optional) (Updatable) A String value whose contents indicate a set of characters that can appear, in any sequence, in a password value"
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

variable "authorization" {
  description = "(Optional) (Updatable) The Authorization field value consists of credentials containing the authentication information of the user agent for the realm of the resource being requested."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) A String that describes the password policy"
  type        = string
  default     = null
}

variable "dictionary_delimiter" {
  description = "(Optional) (Updatable) A delimiter used to separate characters in the dictionary file"
  type        = string
  default     = null
}

variable "dictionary_location" {
  description = "(Optional) (Updatable) A Reference value that contains the URI of a dictionary of words not allowed to appear within a password value"
  type        = string
  default     = null
}

variable "dictionary_word_disallowed" {
  description = "(Optional) (Updatable) Indicates whether the password can match a dictionary word"
  type        = bool
  default     = null
}

variable "disallowed_chars" {
  description = "(Optional) (Updatable) A String value whose contents indicate a set of characters that cannot appear, in any sequence, in a password value"
  type        = string
  default     = null
}

variable "disallowed_substrings" {
  description = "(Optional) (Updatable) A String value whose contents indicate a set of substrings that cannot appear, in any sequence, in a password value"
  type        = list(string)
  default     = []
}

variable "disallowed_user_attribute_values" {
  description = "(Optional) (Updatable) List of User attributes whose values are not allowed in the password."
  type        = list(string)
  default     = []
}

variable "distinct_characters" {
  description = "(Optional) (Updatable) The number of distinct characters between old password and new password"
  type        = number
  default     = null
}

variable "external_id" {
  description = "(Optional) (Updatable) An identifier for the Resource as defined by the Service Consumer. The externalId may simplify identification of the Resource between Service Consumer and Service Provider by allowing the Consumer to refer to the Resource with its own identifier, obviating the need to store a local mapping between the local identifier of the Resource and the identifier used by the Service Provider. Each Resource MAY include a non-empty externalId value. The value of the externalId attribute is always issued by the Service Consumer and can never be specified by the Service Provider. The Service Provider MUST always interpret the externalId as scoped to the Service Consumer's tenant."
  type        = string
  default     = null
}

variable "first_name_disallowed" {
  description = "(Optional) (Updatable) Indicates a sequence of characters that match the user's first name of given name cannot be the password. Password validation against policy will be ignored if length of first name is less than or equal to 3 characters."
  type        = bool
  default     = null
}

variable "force_password_reset" {
  description = "(Optional) (Updatable) Indicates whether all of the users should be forced to reset their password on the next login (to comply with new password policy changes)"
  type        = bool
  default     = null
}

variable "groups" {
  description = "(Optional) (Updatable) A list of groups that the password policy belongs to."
  type = list(object({
    value = string
  }))
  default = []
}

variable "idcs_endpoint" {
  description = "(Required) The basic endpoint for the identity domain"
  type        = string
}

variable "last_name_disallowed" {
  description = "(Optional) (Updatable) Indicates a sequence of characters that match the user's last name of given name cannot be the password. Password validation against policy will be ignored if length of last name is less than or equal to 3 characters."
  type        = bool
  default     = null
}

variable "lockout_duration" {
  description = "(Optional) (Updatable) The time period in minutes to lock out a user account when the threshold of invalid login attempts is reached. The available range is from 5 through 1440 minutes (24 hours)."
  type        = number
  default     = null
}

variable "max_incorrect_attempts" {
  description = "(Optional) (Updatable) An integer that represents the maximum number of failed logins before an account is locked"
  type        = number
  default     = null
}

variable "max_length" {
  description = "(Optional) (Updatable) The maximum password length (in characters). A value of 0 or no value indicates no maximum length restriction."
  type        = number
  default     = null
}

variable "max_repeated_chars" {
  description = "(Optional) (Updatable) The maximum number of repeated characters allowed in a password.  A value of 0 or no value indicates no such restriction."
  type        = number
  default     = null
}

variable "max_special_chars" {
  description = "(Optional) (Updatable) The maximum number of special characters in a password.  A value of 0 or no value indicates no maximum special characters restriction."
  type        = number
  default     = null
}

variable "min_alpha_numerals" {
  description = "(Optional) (Updatable) The minimum number of a combination of alphabetic and numeric characters in a password.  A value of 0 or no value indicates no minimum alphanumeric character restriction."
  type        = number
  default     = null
}

variable "min_alphas" {
  description = "(Optional) (Updatable) The minimum number of alphabetic characters in a password.  A value of 0 or no value indicates no minimum alphas restriction."
  type        = number
  default     = null
}

variable "min_length" {
  description = "(Optional) (Updatable) The minimum password length (in characters). A value of 0 or no value indicates no minimum length restriction."
  type        = number
  default     = null
}

variable "min_lower_case" {
  description = "(Optional) (Updatable) The minimum number of lowercase alphabetic characters in a password.  A value of 0 or no value indicates no minimum lowercase restriction."
  type        = number
  default     = null
}

variable "min_numerals" {
  description = "(Optional) (Updatable) The minimum number of numeric characters in a password.  A value of 0 or no value indicates no minimum numeric character restriction."
  type        = number
  default     = null
}

variable "min_password_age" {
  description = "(Optional) (Updatable) Minimum time after which the user can resubmit the reset password request"
  type        = number
  default     = null
}

variable "min_special_chars" {
  description = "(Optional) (Updatable) The minimum number of special characters in a password. A value of 0 or no value indicates no minimum special characters restriction."
  type        = number
  default     = null
}

variable "min_unique_chars" {
  description = "(Optional) (Updatable) The minimum number of unique characters in a password.  A value of 0 or no value indicates no minimum unique characters restriction."
  type        = number
  default     = null
}

variable "min_upper_case" {
  description = "(Optional) (Updatable) The minimum number of uppercase alphabetic characters in a password. A value of 0 or no value indicates no minimum uppercase restriction."
  type        = number
  default     = null
}

variable "name" {
  description = "(Required) (Updatable) A String that is the name of the policy to display to the user. This is the only mandatory attribute for a password policy."
  type        = string
}

variable "num_passwords_in_history" {
  description = "(Optional) (Updatable) The number of passwords that will be kept in history that may not be used as a password"
  type        = number
  default     = null
}

variable "ocid" {
  description = "(Optional) (Updatable) Unique Oracle Cloud Infrastructure identifier for the SCIM Resource."
  type        = string
  default     = null
}

variable "password_expire_warning" {
  description = "(Optional) (Updatable) An integer indicating the number of days before which the user should be warned about password expiry."
  type        = number
  default     = null
}

variable "password_expires_after" {
  description = "(Optional) (Updatable) The number of days after which the password expires automatically"
  type        = number
  default     = null
}

variable "password_strength" {
  description = "(Optional) (Updatable) Indicates whether the password policy is configured as Simple, Standard, or Custom."
  type        = string
  default     = null
  sensitive   = true
}

variable "priority" {
  description = "(Optional) (Updatable) Password policy priority"
  type        = number
  default     = null
}

variable "required_chars" {
  description = "(Optional) (Updatable) A String value whose contents indicate a set of characters that must appear, in any sequence, in a password value"
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

variable "starts_with_alphabet" {
  description = "(Optional) (Updatable) Indicates that the password must begin with an alphabetic character"
  type        = bool
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

variable "user_name_disallowed" {
  description = "(Optional) (Updatable) Indicates a sequence of characters that match the username cannot be the password. Password validation against policy will be ignored if length of user name is less than or equal to 3 characters."
  type        = bool
  default     = null
}
