resource "oci_identity_domains_security_question" "this" {
  active         = var.active
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  external_id    = var.external_id
  idcs_endpoint  = var.idcs_endpoint
  ocid           = var.ocid
  dynamic "question_text" {
    for_each = var.question_text
    iterator = qt
    content {
      default = qt.value.default
      locale  = qt.value.locale
      value   = qt.value.value
    }
  }
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
  type = var.type
}
