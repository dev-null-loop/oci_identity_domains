resource "oci_identity_domains_approval_workflow" "this" {
  dynamic "approval_workflow_steps" {
    for_each = var.approval_workflow_steps != null ? var.approval_workflow_steps : []
    iterator = aws
    content {
      ocid  = aws.value.ocid
      type  = aws.value.type
      value = aws.value.value
    }
  }
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  description    = var.description
  idcs_endpoint  = var.idcs_endpoint
  max_duration {
    unit  = var.max_duration.unit
    value = var.max_duration.value
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
