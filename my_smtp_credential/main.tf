resource "oci_identity_domains_my_smtp_credential" "this" {
  authorization                = var.authorization
  description                  = var.description
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
  dynamic "user" {
    for_each = var.user[*]
    iterator = us
    content {
      ocid  = us.value.ocid
      value = us.value.value
    }
  }
}
