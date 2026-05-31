resource "oci_identity_domains_approval_workflow_step" "this" {
  dynamic "approvers" {
    for_each = var.approvers != null ? var.approvers : []
    iterator = ap
    content {
      ocid  = ap.value.ocid
      type  = ap.value.type
      value = ap.value.value
    }
  }
  approvers_expressions        = var.approvers_expressions
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  idcs_endpoint                = var.idcs_endpoint
  minimum_approvals            = var.minimum_approvals
  ocid                         = var.ocid
  order                        = var.order
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
