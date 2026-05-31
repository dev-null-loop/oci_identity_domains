resource "oci_identity_domains_identity_propagation_trust" "this" {
  account_id          = var.account_id
  active              = var.active
  allow_impersonation = var.allow_impersonation
  attribute_sets      = var.attribute_sets
  attributes          = var.attributes
  authorization       = var.authorization
  client_claim_name   = var.client_claim_name
  client_claim_values = var.client_claim_values
  clock_skew_seconds  = var.clock_skew_seconds
  description         = var.description
  idcs_endpoint       = var.idcs_endpoint
  dynamic "impersonation_service_users" {
    for_each = var.impersonation_service_users != null ? var.impersonation_service_users : []
    iterator = isu
    content {
      ocid  = isu.value.ocid
      rule  = isu.value.rule
      value = isu.value.value
    }
  }
  issuer = var.issuer
  dynamic "keytab" {
    for_each = var.keytab[*]
    iterator = ke
    content {
      secret_ocid    = ke.value.secret_ocid
      secret_version = ke.value.secret_version
    }
  }
  name                         = var.name
  oauth_clients                = var.oauth_clients
  ocid                         = var.ocid
  public_certificate           = var.public_certificate
  public_key_endpoint          = var.public_key_endpoint
  resource_type_schema_version = var.resource_type_schema_version
  schemas                      = var.schemas
  subject_claim_name           = var.subject_claim_name
  subject_mapping_attribute    = var.subject_mapping_attribute
  subject_type                 = var.subject_type
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  type = var.type
}
