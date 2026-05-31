resource "oci_identity_domains_oauth_partner_certificate" "this" {
  authorization                = var.authorization
  certificate_alias            = var.certificate_alias
  external_id                  = var.external_id
  idcs_endpoint                = var.idcs_endpoint
  key_store_id                 = var.key_store_id
  key_store_name               = var.key_store_name
  key_store_password           = var.key_store_password
  map                          = var.map
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
  x509base64certificate = var.x509base64certificate
}
