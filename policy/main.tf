resource "oci_identity_domains_policy" "this" {
  active         = var.active
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  description    = var.description
  external_id    = var.external_id
  idcs_endpoint  = var.idcs_endpoint
  name           = var.name
  ocid           = var.ocid
  policy_groovy  = var.policy_groovy
  policy_type {
    value = var.policy_type.value
  }
  resource_type_schema_version = var.resource_type_schema_version
  dynamic "rules" {
    for_each = var.rules != null ? var.rules : []
    iterator = ru
    content {
      sequence = ru.value.sequence
      value    = ru.value.value
    }
  }
  schemas = var.schemas
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
}
