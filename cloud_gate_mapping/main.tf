resource "oci_identity_domains_cloud_gate_mapping" "this" {
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  cloud_gate {
    value = var.cloud_gate.value
  }
  description = var.description
  gateway_app {
    name  = var.gateway_app.name
    value = var.gateway_app.value
  }
  idcs_endpoint                = var.idcs_endpoint
  nginx_settings               = var.nginx_settings
  ocid                         = var.ocid
  policy_name                  = var.policy_name
  proxy_pass                   = var.proxy_pass
  resource_prefix              = var.resource_prefix
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  server {
    value = var.server.value
  }
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  dynamic "upstream_server_group" {
    for_each = var.upstream_server_group[*]
    iterator = usg
    content {
      ssl   = usg.value.ssl
      value = usg.value.value
    }
  }
}
