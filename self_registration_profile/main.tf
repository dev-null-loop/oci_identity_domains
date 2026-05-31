resource "oci_identity_domains_self_registration_profile" "this" {
  activation_email_required = var.activation_email_required
  active                    = var.active
  dynamic "after_submit_text" {
    for_each = var.after_submit_text != null ? var.after_submit_text : []
    iterator = ast
    content {
      default = ast.value.default
      locale  = ast.value.locale
      value   = ast.value.value
    }
  }
  allowed_email_domains = var.allowed_email_domains
  attribute_sets        = var.attribute_sets
  attributes            = var.attributes
  authorization         = var.authorization
  dynamic "consent_text" {
    for_each = var.consent_text != null ? var.consent_text : []
    iterator = ct
    content {
      default = ct.value.default
      locale  = ct.value.locale
      value   = ct.value.value
    }
  }
  consent_text_present = var.consent_text_present
  dynamic "default_groups" {
    for_each = var.default_groups != null ? var.default_groups : []
    iterator = dg
    content {
      value = dg.value.value
    }
  }
  disallowed_email_domains = var.disallowed_email_domains
  dynamic "display_name" {
    for_each = var.display_name
    iterator = dn
    content {
      default = dn.value.default
      locale  = dn.value.locale
      value   = dn.value.value
    }
  }
  email_template {
    value = var.email_template.value
  }
  external_id = var.external_id
  footer_logo = var.footer_logo
  dynamic "footer_text" {
    for_each = var.footer_text != null ? var.footer_text : []
    iterator = ft
    content {
      default = ft.value.default
      locale  = ft.value.locale
      value   = ft.value.value
    }
  }
  header_logo = var.header_logo
  dynamic "header_text" {
    for_each = var.header_text != null ? var.header_text : []
    iterator = ht
    content {
      default = ht.value.default
      locale  = ht.value.locale
      value   = ht.value.value
    }
  }
  idcs_endpoint                        = var.idcs_endpoint
  name                                 = var.name
  number_of_days_redirect_url_is_valid = var.number_of_days_redirect_url_is_valid
  ocid                                 = var.ocid
  redirect_url                         = var.redirect_url
  resource_type_schema_version         = var.resource_type_schema_version
  schemas                              = var.schemas
  show_on_login_page                   = var.show_on_login_page
  dynamic "tags" {
    for_each = var.tags != null ? var.tags : []
    iterator = ta
    content {
      key   = ta.value.key
      value = ta.value.value
    }
  }
  dynamic "user_attributes" {
    for_each = var.user_attributes != null ? var.user_attributes : []
    iterator = ua
    content {
      fully_qualified_attribute_name = ua.value.fully_qualified_attribute_name
      seq_number                     = ua.value.seq_number
      value                          = ua.value.value
    }
  }
}
