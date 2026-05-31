resource "oci_identity_domains_identity_proofing_provider_template" "this" {
  identity_proofing_provider_template_provider = var.identity_proofing_provider_template_provider
  attribute_sets                               = var.attribute_sets
  attributes                                   = var.attributes
  authorization                                = var.authorization
  dynamic "configuration" {
    for_each = var.configuration != null ? var.configuration : []
    iterator = co
    content {
      name        = co.value.name
      sensitivity = co.value.sensitivity
      type        = co.value.type
    }
  }
  idcs_endpoint                = var.idcs_endpoint
  ocid                         = var.ocid
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  service_type                 = var.service_type
  verification_url             = var.verification_url
}
