resource "oci_identity_domains_my_request" "this" {
  action         = var.action
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  idcs_endpoint  = var.idcs_endpoint
  justification  = var.justification
  ocid           = var.ocid
  requesting {
    type  = var.requesting.type
    value = var.requesting.value
  }
  dynamic "requestor" {
    for_each = var.requestor[*]
    iterator = re
    content {
      value = re.value.value
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
}
