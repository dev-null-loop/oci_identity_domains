resource "oci_identity_domains_cloud_gate" "this" {
  active                       = var.active
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  description                  = var.description
  display_name                 = var.display_name
  idcs_endpoint                = var.idcs_endpoint
  last_modified_time           = var.last_modified_time
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
  type = var.type
}
