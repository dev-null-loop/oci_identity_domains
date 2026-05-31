resource "oci_identity_domains_grant" "this" {
  dynamic "app" {
    for_each = var.app[*]
    iterator = ap
    content {
      value = ap.value.value
    }
  }
  dynamic "app_entitlement_collection" {
    for_each = var.app_entitlement_collection[*]
    iterator = aec
    content {
      value = aec.value.value
    }
  }
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  dynamic "entitlement" {
    for_each = var.entitlement[*]
    iterator = en
    content {
      attribute_name  = en.value.attribute_name
      attribute_value = en.value.attribute_value
    }
  }
  grant_mechanism               = var.grant_mechanism
  granted_attribute_values_json = var.granted_attribute_values_json
  grantee {
    type  = var.grantee.type
    value = var.grantee.value
  }
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
