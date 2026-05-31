resource "oci_identity_domains_api_key" "this" {
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  description                  = var.description
  idcs_endpoint                = var.idcs_endpoint
  key                          = var.key
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
  dynamic "urnietfparamsscimschemasoracleidcsextensionself_change_user" {
    for_each = var.urnietfparamsscimschemasoracleidcsextensionself_change_user[*]
    iterator = ucu
    content {
      allow_self_change = ucu.value.allow_self_change
    }
  }
  dynamic "user" {
    for_each = var.user[*]
    iterator = us
    content {
      ocid  = us.value.ocid
      value = us.value.value
    }
  }
}
