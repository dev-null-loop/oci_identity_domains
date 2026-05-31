resource "oci_identity_domains_condition" "this" {
  attribute_name               = var.attribute_name
  attribute_sets               = var.attribute_sets
  attribute_value              = var.attribute_value
  attributes                   = var.attributes
  authorization                = var.authorization
  description                  = var.description
  evaluate_condition_if        = var.evaluate_condition_if
  external_id                  = var.external_id
  idcs_endpoint                = var.idcs_endpoint
  name                         = var.name
  ocid                         = var.ocid
  operator                     = var.operator
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
