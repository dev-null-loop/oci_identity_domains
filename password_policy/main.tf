resource "oci_identity_domains_password_policy" "this" {
  allowed_chars                    = var.allowed_chars
  attribute_sets                   = var.attribute_sets
  attributes                       = var.attributes
  authorization                    = var.authorization
  description                      = var.description
  dictionary_delimiter             = var.dictionary_delimiter
  dictionary_location              = var.dictionary_location
  dictionary_word_disallowed       = var.dictionary_word_disallowed
  disallowed_chars                 = var.disallowed_chars
  disallowed_substrings            = var.disallowed_substrings
  disallowed_user_attribute_values = var.disallowed_user_attribute_values
  distinct_characters              = var.distinct_characters
  external_id                      = var.external_id
  first_name_disallowed            = var.first_name_disallowed
  force_password_reset             = var.force_password_reset
  dynamic "groups" {
    for_each = var.groups != null ? var.groups : []
    iterator = gr
    content {
      value = gr.value.value
    }
  }
  idcs_endpoint                = var.idcs_endpoint
  last_name_disallowed         = var.last_name_disallowed
  lockout_duration             = var.lockout_duration
  max_incorrect_attempts       = var.max_incorrect_attempts
  max_length                   = var.max_length
  max_repeated_chars           = var.max_repeated_chars
  max_special_chars            = var.max_special_chars
  min_alpha_numerals           = var.min_alpha_numerals
  min_alphas                   = var.min_alphas
  min_length                   = var.min_length
  min_lower_case               = var.min_lower_case
  min_numerals                 = var.min_numerals
  min_password_age             = var.min_password_age
  min_special_chars            = var.min_special_chars
  min_unique_chars             = var.min_unique_chars
  min_upper_case               = var.min_upper_case
  name                         = var.name
  num_passwords_in_history     = var.num_passwords_in_history
  ocid                         = var.ocid
  password_expire_warning      = var.password_expire_warning
  password_expires_after       = var.password_expires_after
  password_strength            = var.password_strength
  priority                     = var.priority
  required_chars               = var.required_chars
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  starts_with_alphabet         = var.starts_with_alphabet
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  user_name_disallowed = var.user_name_disallowed
}
