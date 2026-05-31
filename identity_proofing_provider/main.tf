resource "oci_identity_domains_identity_proofing_provider" "this" {
  identity_proofing_provider_provider = var.identity_proofing_provider_provider
  attribute_sets                      = var.attribute_sets
  attributes                          = var.attributes
  authorization                       = var.authorization
  dynamic "claim_mapping" {
    for_each = var.claim_mapping
    iterator = cm
    content {
      attr_match       = cm.value.attr_match
      verifiable_claim = cm.value.verifiable_claim
    }
  }
  dynamic "configuration" {
    for_each = var.configuration
    iterator = co
    content {
      name  = co.value.name
      value = co.value.value
    }
  }
  description                  = var.description
  idcs_endpoint                = var.idcs_endpoint
  name                         = var.name
  ocid                         = var.ocid
  resource_type_schema_version = var.resource_type_schema_version
  dynamic "runtime_data" {
    for_each = var.runtime_data != null ? var.runtime_data : []
    iterator = rd
    content {
      attr_name  = rd.value.attr_name
      attr_value = rd.value.attr_value
    }
  }
  schemas = var.schemas
  status  = var.status
}
