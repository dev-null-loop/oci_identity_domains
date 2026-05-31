resource "oci_identity_domains_account_recovery_setting" "this" {
  account_recovery_setting_id  = var.account_recovery_setting_id
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  external_id                  = var.external_id
  factors                      = var.factors
  idcs_endpoint                = var.idcs_endpoint
  lockout_duration             = var.lockout_duration
  max_incorrect_attempts       = var.max_incorrect_attempts
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
}
