resource "oci_identity_domains_identity_setting" "this" {
  dynamic "posix_gid" {
    for_each = var.posix_gid[*]
    iterator = pg
    content {
      manual_assignment_ends_at     = pg.value.manual_assignment_ends_at
      manual_assignment_starts_from = pg.value.manual_assignment_starts_from
    }
  }
  dynamic "posix_uid" {
    for_each = var.posix_uid[*]
    iterator = pu
    content {
      manual_assignment_ends_at     = pu.value.manual_assignment_ends_at
      manual_assignment_starts_from = pu.value.manual_assignment_starts_from
    }
  }
  attribute_sets                          = var.attribute_sets
  attributes                              = var.attributes
  authorization                           = var.authorization
  emit_locked_message_when_user_is_locked = var.emit_locked_message_when_user_is_locked
  external_id                             = var.external_id
  idcs_endpoint                           = var.idcs_endpoint
  identity_setting_id                     = var.identity_setting_id
  dynamic "my_profile" {
    for_each = var.my_profile[*]
    iterator = mp
    content {
      allow_end_users_to_change_their_password          = mp.value.allow_end_users_to_change_their_password
      allow_end_users_to_link_their_support_account     = mp.value.allow_end_users_to_link_their_support_account
      allow_end_users_to_manage_their_capabilities      = mp.value.allow_end_users_to_manage_their_capabilities
      allow_end_users_to_update_their_security_settings = mp.value.allow_end_users_to_update_their_security_settings
    }
  }
  ocid                                = var.ocid
  primary_email_required              = var.primary_email_required
  resource_type_schema_version        = var.resource_type_schema_version
  return_inactive_over_locked_message = var.return_inactive_over_locked_message
  schemas                             = var.schemas
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  dynamic "tokens" {
    for_each = var.tokens != null ? var.tokens : []
    iterator = to
    content {
      expires_after = to.value.expires_after
      type          = to.value.type
    }
  }
  user_allowed_to_set_recovery_email = var.user_allowed_to_set_recovery_email
}
