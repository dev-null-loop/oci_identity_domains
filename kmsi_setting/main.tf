resource "oci_identity_domains_kmsi_setting" "this" {
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  external_id                  = var.external_id
  idcs_endpoint                = var.idcs_endpoint
  kmsi_feature_enabled         = var.kmsi_feature_enabled
  kmsi_prompt_enabled          = var.kmsi_prompt_enabled
  kmsi_setting_id              = var.kmsi_setting_id
  last_enabled_on              = var.last_enabled_on
  last_used_validity_in_days   = var.last_used_validity_in_days
  max_allowed_sessions         = var.max_allowed_sessions
  ocid                         = var.ocid
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  token_validity_in_days = var.token_validity_in_days
  tou_prompt_disabled    = var.tou_prompt_disabled
}
