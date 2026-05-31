resource "oci_identity_domains_oauth2client_credential" "this" {
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  description                  = var.description
  expires_on                   = var.expires_on
  idcs_endpoint                = var.idcs_endpoint
  is_reset_secret              = var.is_reset_secret
  name                         = var.name
  ocid                         = var.ocid
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  dynamic "scopes" {
    for_each = var.scopes
    iterator = sc
    content {
      audience = sc.value.audience
      scope    = sc.value.scope
    }
  }
  status = var.status
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
