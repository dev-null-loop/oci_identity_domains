resource "oci_identity_domains_notification_setting" "this" {
  attribute_sets = var.attribute_sets
  attributes     = var.attributes
  authorization  = var.authorization
  dynamic "event_settings" {
    for_each = var.event_settings
    iterator = es
    content {
      enabled  = es.value.enabled
      event_id = es.value.event_id
    }
  }
  external_id = var.external_id
  from_email_address {
    display_name = var.from_email_address.display_name
    validate     = var.from_email_address.validate
    value        = var.from_email_address.value
  }
  idcs_endpoint                                                                    = var.idcs_endpoint
  notification_enabled                                                             = var.notification_enabled
  notification_setting_id                                                          = var.notification_setting_id
  ocid                                                                             = var.ocid
  resource_type_schema_version                                                     = var.resource_type_schema_version
  schemas                                                                          = var.schemas
  send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email = var.send_notification_to_old_and_new_primary_emails_when_admin_changes_primary_email
  send_notifications_to_secondary_email                                            = var.send_notifications_to_secondary_email
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  test_mode_enabled = var.test_mode_enabled
  test_recipients   = var.test_recipients
}
