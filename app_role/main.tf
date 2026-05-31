resource "oci_identity_domains_app_role" "this" {
  admin_role = var.admin_role
  app {
    value = var.app.value
  }
  attribute_sets               = var.attribute_sets
  attributes                   = var.attributes
  authorization                = var.authorization
  available_to_clients         = var.available_to_clients
  available_to_groups          = var.available_to_groups
  available_to_users           = var.available_to_users
  description                  = var.description
  display_name                 = var.display_name
  idcs_endpoint                = var.idcs_endpoint
  legacy_group_name            = var.legacy_group_name
  ocid                         = var.ocid
  public                       = var.public
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
