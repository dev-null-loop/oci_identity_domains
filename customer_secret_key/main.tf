resource "oci_identity_domains_customer_secret_key" "this" {
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  description                  = var.description
  display_name                 = var.display_name
  expires_on                   = var.expires_on
  idcs_endpoint                = var.idcs_endpoint
  ocid                         = var.ocid
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  status                       = var.status
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
