resource "oci_identity_domains_app" "this" {
  active                  = true
  all_url_schemes_allowed = false
  allow_access_control    = false
  allowed_grants          = var.allowed_grants
  allowed_operations      = var.allowed_operations
  dynamic "allowed_scopes" {
    for_each = var.allowed_scopes != [] ? var.allowed_scopes : []
    iterator = as
    content {
      fqs = as.value
    }
  }

  attr_rendering_metadata {
    name    = "aliasApps"
    section = ""
    visible = false
    widget  = ""
  }
  based_on_template {
    value         = var.based_on_template.value
    well_known_id = var.based_on_template.well_known_id
  }
  admin_roles
  client_ip_checking        = var.client_ip_checking
  client_type               = var.client_type
  delegated_service_names   = var.delegated_service_names
  description               = var.description
  display_name              = var.display_name
  idcs_endpoint             = var.idcs_endpoint
  is_alias_app              = false
  is_enterprise_app         = false
  is_kerberos_realm         = false
  is_login_target           = true
  is_mobile_target          = false
  is_oauth_client           = true
  is_oauth_resource         = false
  is_saml_service_provider  = false
  is_unmanaged_app          = false
  is_web_tier_policy        = false
  login_mechanism           = var.login_mechanism
  post_logout_redirect_uris = var.post_logout_redirect_uris
  redirect_uris             = var.redirect_uris
  schemas                   = var.schemas
  secondary_audiences       = var.secondary_audiences
  show_in_my_apps           = var.show_in_my_apps
  trust_scope               = var.trust_scope
}
