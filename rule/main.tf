resource "oci_identity_domains_rule" "this" {
  active         = var.active
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  condition      = var.condition
  dynamic "condition_group" {
    for_each = var.condition_group[*]
    iterator = cg
    content {
      type  = cg.value.type
      value = cg.value.value
    }
  }
  description   = var.description
  external_id   = var.external_id
  idcs_endpoint = var.idcs_endpoint
  locked        = var.locked
  name          = var.name
  ocid          = var.ocid
  policy_type {
    value = var.policy_type.value
  }
  resource_type_schema_version = var.resource_type_schema_version
  dynamic "return" {
    for_each = var.return
    iterator = re
    content {
      name          = re.value.name
      return_groovy = re.value.return_groovy
      value         = re.value.value
    }
  }
  rule_groovy = var.rule_groovy
  schemas     = var.schemas
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
}
