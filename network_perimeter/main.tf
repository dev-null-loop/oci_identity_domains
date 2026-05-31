resource "oci_identity_domains_network_perimeter" "this" {
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  description    = var.description
  external_id    = var.external_id
  idcs_endpoint  = var.idcs_endpoint
  dynamic "ip_addresses" {
    for_each = var.ip_addresses
    iterator = ia
    content {
      type    = ia.value.type
      value   = ia.value.value
      version = ia.value.version
    }
  }
  name                         = var.name
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
