resource "oci_identity_domains_dynamic_resource_group" "this" {
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  description                  = var.description
  display_name                 = var.display_name
  idcs_endpoint                = var.idcs_endpoint
  matching_rule                = var.matching_rule
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
  dynamic "urnietfparamsscimschemasoracleidcsextension_oci_tags" {
    for_each = var.urnietfparamsscimschemasoracleidcsextension_oci_tags[*]
    iterator = uot
    content {
      dynamic "defined_tags" {
        for_each = uot.value.defined_tags != null ? uot.value.defined_tags : []
        iterator = dt
        content {
          key       = dt.value.key
          namespace = dt.value.namespace
          value     = dt.value.value
        }
      }
      dynamic "freeform_tags" {
        for_each = uot.value.freeform_tags != null ? uot.value.freeform_tags : []
        iterator = ft
        content {
          key   = ft.value.key
          value = ft.value.value
        }
      }
    }
  }
}
