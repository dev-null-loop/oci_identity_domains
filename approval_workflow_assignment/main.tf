resource "oci_identity_domains_approval_workflow_assignment" "this" {
  approval_workflow {
    ocid  = var.approval_workflow.ocid
    type  = var.approval_workflow.type
    value = var.approval_workflow.value
  }
  assigned_to {
    ocid  = var.assigned_to.ocid
    type  = var.assigned_to.type
    value = var.assigned_to.value
  }
  assignment_type              = var.assignment_type
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  idcs_endpoint                = var.idcs_endpoint
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
