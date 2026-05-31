resource "oci_identity_domains_cloud_gate_server" "this" {
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  cloud_gate {
    value = var.cloud_gate.value
  }
  description                  = var.description
  display_name                 = var.display_name
  host_name                    = var.host_name
  idcs_endpoint                = var.idcs_endpoint
  nginx_settings               = var.nginx_settings
  ocid                         = var.ocid
  port                         = var.port
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  ssl                          = var.ssl
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
}
