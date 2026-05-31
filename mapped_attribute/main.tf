resource "oci_identity_domains_mapped_attribute" "this" {
  dynamic "attribute_mappings" {
    for_each = var.attribute_mappings != null ? var.attribute_mappings : []
    iterator = am
    content {
      applies_to_actions            = am.value.applies_to_actions
      idcs_attribute_name           = am.value.idcs_attribute_name
      managed_object_attribute_name = am.value.managed_object_attribute_name
      required                      = am.value.required
      saml_format                   = am.value.saml_format
    }
  }
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  direction                    = var.direction
  idcs_endpoint                = var.idcs_endpoint
  idcs_resource_type           = var.idcs_resource_type
  mapped_attribute_id          = var.mapped_attribute_id
  ocid                         = var.ocid
  ref_resource_id              = var.ref_resource_id
  ref_resource_type            = var.ref_resource_type
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
